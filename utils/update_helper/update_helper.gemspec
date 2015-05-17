Gem::Specification.new do |s|
  s.name        = 'update_helper'
  s.version     = '0.0.1'
  s.date        = '2014-07-06'
  s.summary     = "Update Helpers"
  s.description = "Collection of helper scripts and classes for upgrading gaming-base's database"
  s.authors     = ["Noxx"]
  s.email       = ['webmaster@gaming-base.net']
  s.files       = Dir["{lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files  = Dir["test/**/*"]
  s.homepage    = 'http://gaming-base.net'
  s.license     = 'MIT'

  s.add_dependency "mini_magick", "~> 4.0"
end