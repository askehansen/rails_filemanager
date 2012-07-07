$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "filemanager/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "filemanager"
  s.version     = Filemanager::VERSION
  s.authors     = ["Aske Hansen"]
  s.email       = ["aske@deeco.dk"]
  s.homepage    = "https://github.com/Askehansen/filemanager"
  s.summary     = "A ruby on rails filemanager"
  s.description = "This is a filemanager for ruby on rails that works right away with CKEditor"

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2"
  s.add_dependency "paperclip"

  s.add_development_dependency "sqlite3"
end
