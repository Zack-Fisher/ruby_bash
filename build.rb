#!/usr/bin/env ruby

require_relative 'lib/bash_help.rb'

normalize __FILE__

def update_gem_version(new_version)
    puts "updating gem version to #{new_version}..."
    gemspec_path = "bash_help.gemspec"
    gemspec_text = File.read(gemspec_path)
    gemspec_text.sub!(/(s\.version\s+=\s+).*$/, '\1"' + new_version + '"')
    File.write(gemspec_path, gemspec_text)
end

if not ARGV[0]
    puts "usage: build.rb <version>"
    exit
end

version = ARGV[0]
update_gem_version(version)

puts "building gem..."
system("gem build bash_help.gemspec")
system("sudo gem install bash_help-#{version}.gem")
system("gem push bash_help-#{version}.gem")
