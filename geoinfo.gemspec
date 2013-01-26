# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geoinfo/version'

Gem::Specification.new do |gem|
  gem.name          = "geoinfo"
  gem.version       = Geoinfo::VERSION
  gem.authors       = ["Pravin Mishra"]
  gem.email         = ["diatm.pravin.it.07.27@gmail.com"]
  gem.description   = %q{GeoInfo gem offers comprehensive and reliable databases of localities and zip codes for numerous state of india. Such data may be integrated to professional software, websites, may be used to generate statistics and to various other ends. Gem will provide localities, administrative subdivisions, state and geographical coordinates.}
  gem.summary       = %q{GeoInfo gem offers comprehensive and reliable databases of localities and zip codes for numerous state of india. Such data may be integrated to professional software, websites, may be used to generate statistics and to various other ends. Gem will provide localities, administrative subdivisions, state and geographical coordinates.}
  gem.homepage      = "https://github.com/diatmpravin/geoinfo.git"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency "rspec"
end
