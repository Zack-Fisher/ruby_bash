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
