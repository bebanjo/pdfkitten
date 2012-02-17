# -*- encoding: utf-8 -*-
require File.expand_path('../lib/pdfkitten/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Luismi Cavalle"]
  gem.email         = ["luismi@lmcavalle.com"]
  
  gem.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.name          = "pdfkitten"
  gem.require_paths = ["lib"]
  gem.version       = Pdfkitten::VERSION
  
  gem.add_dependency "sinatra"
  gem.add_dependency "pdfkit"
end
