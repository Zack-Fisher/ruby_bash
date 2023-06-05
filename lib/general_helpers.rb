## usage: normalize __FILE__
# normalize the directory that your scripts execute in, even if they're running from different places.
# this is useful for when you want to reference a file in the same directory as your script, but you don't know where your script will be run from
def normalize(path)
    filepath = File.expand_path(path)
    puts filepath
    # now get the dirpath of this file
    dirpath = File.dirname(filepath)
    Dir.chdir(dirpath)
end

# system(command), but aborts if the command fails.
def safe_system(command)
  unless system(command)
    puts "Command '#{command}' failed. Aborting."
    exit
  end
end

# for generating usage strings.
def print_method_sig(method_name)
    method_obj = method(method_name)
    param_list = method_obj.parameters.map do |type, name|
        case type
        when :req then name.to_s
        when :opt then "#{name} = <default_value>"
        when :rest then "*#{name}"
        when :keyreq then "#{name}:"
        when :key then "#{name}: <default_value>"
        when :keyrest then "**#{name}"
        when :block then "&#{name}"
        end
    end
    puts "#{method_name}(#{param_list.join(', ')})"
end

# function usage string, with a custom string param that formats it for you.
def usage(method_name, custom_usage_string, should_exit = true)
    puts "Usage for #{method_name}:"
    print_method_sig(method_name)
    puts custom_usage_string
    if should_exit
        exit
    end
end

# require every file in a directory.
def require_dir(directory_path)
    # Get an array of all files in the directory
    script_files = Dir.glob(File.join(directory_path, '*.rb'))

    # Iterate over each script file
    script_files.each do |script_file|
        # Require or load the script file
        require script_file
    end
end

=begin
call this like 
require_dir_relative(__FILE__, 'path/to/directory')
=end
def require_dir_relative(script_file_path, directory_path)
    require_dir(File.expand_path(File.dirname(script_file_path), directory_path))
end
