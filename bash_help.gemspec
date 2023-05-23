Gem::Specification.new do |s|
  s.name          = "bash_help"
  s.version       = "0.0.5"
  s.default_executable = "bash_help"
  s.authors       = ["Zack Fisher"]
  s.email         = "zackfisher@proton.me"
  s.description   = "Bash scripting helpers for Ruby."
  s.date          = "2023-05-22"
  s.files         = Dir["lib/**/*", "bin/bash_help"]
  s.homepage      = "https://github.com/zack-fisher"
  s.require_paths = ["lib"]
  s.summary       = "Bash scripting helpers for Ruby."

  s.required_ruby_version = ">= 2.6.0"
end
