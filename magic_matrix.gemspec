$:.push File.expand_path("../lib", __FILE__)

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

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  s.add_dependency "rails", "~> 4.2.0"
  s.add_dependency "activesupport", "~> 4.2.0"
  s.add_development_dependency "pry",  "~> 0.10"
end
