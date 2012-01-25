# -*- encoding: utf-8 -*-
require File.expand_path('../lib/html_validator', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Arnau Sanchez"]
  gem.email         = ["pyarnau@gmail.com"]
  gem.description   = %q{HTML Validator}
  gem.summary       = %q{Validate HTML using Nokogiri}
  gem.homepage      = ""

  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "html_validator"
  gem.require_paths = ["lib"]
  gem.version       = HtmlValidator::VERSION
  gem.add_development_dependency "rspec", "~> 2.6"
end
