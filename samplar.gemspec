$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "samplar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "samplar"
  s.version     = Samplar::VERSION
  s.authors     = ["litencatt"]
  s.email       = ["ncl0709@gmail.com"]
  s.homepage    = "https://github.com/litencatt/samplar"
  s.summary     = "API Client tester on the view."
  s.description = "API Client tester on the view."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["spec/**/*"]

  if RUBY_VERSION[0..2] < "2.5"
    s.add_dependency "rails", "~> 4.2.11.1", "< 6.1.0"
    s.add_dependency 'sprockets-rails', '~> 2.3.3'
  else
    s.add_dependency "rails"
  end

  s.add_development_dependency "sqlite3", "~> 1.3.6"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "slim-rails"
end
