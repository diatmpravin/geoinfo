# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoinfo/version'

Gem::Specification.new do |gem|
  gem.name          = "geoinfo"
  gem.version       = Geoinfo::VERSION
  gem.authors       = ["Pravin Mishra"]
  gem.email         = ["diatm.pravin.it.07.27@gmail.com"]
  gem.description   = %q{find geo info}
  gem.summary       = %q{find geo info}
  # gem.homepage      = "https://github.com/diatmpravin/geoinfo.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end