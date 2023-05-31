# helper functions for compilation, used primarily for quick ruby build scripts.

require_relative 'drawing.rb'
require_relative 'general_helpers.rb'

## C compiler helpers:
def gcc_compile(files, project_name, extra_flags = '', override_flags = false)
    line

    if files.empty?
        puts 'No files to compile'
        return
    end

    if project_name.empty?
        puts 'No project name given'
        return
    end

    puts "Compiling #{files} into #{project_name}..."

    ignore_header_warnings = '-Wno-builtin-declaration-mismatch -Wno-implicit-function-declaration'

    default_flags = ['-g', ignore_header_warnings].join(' ')
    flags = [default_flags, extra_flags].join(' ')

    flags = extra_flags if override_flags

    puts "Flags: #{flags}"

    command = "gcc -o #{project_name} #{files} #{flags}"

    # exit if the compilation fails.
    safe_system command

    puts "Compiled #{project_name}"
    puts "Running..."

    line

    safe_system "./#{project_name}"
end
