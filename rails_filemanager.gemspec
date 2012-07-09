$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "rails_filemanager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "rails_filemanager"
  s.version     = RailsFilemanager::VERSION
  s.authors     = ["Aske Hansen"]
  s.email       = ["aske@deeco.dk"]
  s.homepage    = "https://github.com/askehansen/rails_filemanager"
  s.summary     = "A ruby on rails filemanager"
  s.description = "This is a filemanager for ruby on rails that works right away with CKEditor"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "paperclip"

  s.add_development_dependency "sqlite3"
end
