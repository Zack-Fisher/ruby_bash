# ruby_bash
These are some helpers to make writing shell scripts with Ruby easier, defining some things that are present in Bash, along with some helpers.
It's not recommended to use this in a normal project, as all the imports are without namespacing.

## installation
The latest version should be hosted on rubygems.org, so
```bash
gem install bash_help
```
should work perfectly fine.
If it doesn't, the ./build.rb script at the root of this project will build a new version for you, and auto-install it.

## recommended use
In your .bashrc, add this line to enable bash_help
```bash
export RUBYOPT="-rbash_help"
```
then, you can call any of the methods here anywhere in your #!/usr/bin/env ruby scripts, since it loads w/ the interpreter.
