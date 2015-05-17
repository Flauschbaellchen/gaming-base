$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "florensia/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "florensia"
  s.version     = Florensia::VERSION
  s.authors     = ["Noxx"]
  s.email       = ["webmaster@gaming-base.net"]
  s.homepage    = "http://gaming-base.net"
  s.summary     = "Fanpage about Florensia"
  s.description = "Non-commercial fanpage about the Online MMO Florensia"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.1"

  s.add_development_dependency "sqlite3"
end
