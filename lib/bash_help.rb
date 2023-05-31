# all imports in this module are global.
# beware!
## in your .bashrc, add this line to enable bash_help
# export RUBYOPT="-rbash_help"
# then, you can call any of the methods here anywhere in your #!/usr/bin/env ruby scripts, since it loads w/ the interpreter.

require_relative 'hello_module.rb'
require_relative 'bash_standins.rb'
require_relative 'general_helpers.rb'
require_relative 'drawing.rb'
require_relative 'compile.rb'
