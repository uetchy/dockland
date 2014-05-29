# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'dockland/version'

Gem::Specification.new do |spec|
  spec.name          = "dockland"
  spec.version       = Dockland::VERSION
  spec.authors       = ["oame"]
  spec.email         = ["oame@oameya.com"]
  spec.summary       = %q{dokku pipeline}
  spec.description   = %q{dokku pipeline}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake"

  spec.add_runtime_dependency "thor"
end
