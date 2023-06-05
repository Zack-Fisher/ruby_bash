#!/usr/bin/env ruby

# usage: ./build.rb <version> <message>

require_relative 'lib/bash_help.rb'

normalize __FILE__

def update_gem_version(new_version)
    puts "updating gem version to #{new_version}..."
    gemspec_path = "bash_help.gemspec"
    gemspec_text = File.read(gemspec_path)
    gemspec_text.sub!(/(s\.version\s+=\s+).*$/, '\1"' + new_version + '"')
    File.write(gemspec_path, gemspec_text)
end

def build_gem(version)
    safe_system "gem build bash_help.gemspec"
    safe_system "sudo gem install bash_help-#{version}.gem"
end

# the default version.
version = "0.0.1"

if not ARGV[0]
    # just build the default gem with the default version, and install that.
    update_gem_version version
    build_gem version
    exit
end

version = ARGV[0]
update_gem_version version
build_gem version
# then upload it and do all the version control stuff.
safe_system "gem push bash_help-#{version}.gem"

system("git add .")
message = ""
if ARGV[1]
    message = ARGV[1]
end
safe_system "git commit -m \"version #{version}: #{message}\""
safe_system "git push"
