# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parse_provision_profile/version'

Gem::Specification.new do |spec|
  spec.name          = "parse_provision_profile"
  spec.version       = ParseProvisionProfile::VERSION
  spec.authors       = ["Bhakta"]
  spec.email         = ["bhakta98rta@gmail.com"]
  spec.summary       = "Gem to parse provision profile"
  spec.description   = "Gem to parse provision profile"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = ["parse_provision_profile"]
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "openssl"
  spec.add_development_dependency "rexml/document"
  spec.add_development_dependency "getoptlong"
  spec.add_development_dependency "plist"
  spec.add_development_dependency "colorize"
end