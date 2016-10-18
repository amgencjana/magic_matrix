# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

# Maintain your gem's version:
require "magic_matrix/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "magic_matrix"
  s.version     = MagicMatrix::VERSION
  s.authors     = ["amgencjana"]
  s.email       = ["adam.goryczka@gmail.com"]
  s.homepage    = "http://www.aureso.com"
  s.summary     = " Summary of MagicMatrix."
  s.description = " Description of MagicMatrix."
  s.license     = "MIT"

  s.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  s.require_paths = ["lib"]

  s.add_development_dependency "bundler", "~> 1.12"
  s.add_development_dependency "rake", "~> 10.0"
  s.add_development_dependency "rspec", "~> 3.0"
  s.add_development_dependency "pry", "~> 0.10"
  s.add_development_dependency "hashie"
end
