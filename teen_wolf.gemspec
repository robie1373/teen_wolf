# -*- encoding: utf-8 -*-
require File.expand_path('../lib/teen_wolf/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Robie Lutsey"]
  gem.email         = ["robie1373@gmail.com"]
  gem.description   = %q{Make it a little easier to get things and stuff from wolframalpha}
  gem.summary       = %q{Wolframalpha is cool. Their API isn't bad. Ruby XML is sometimes very annoying. As such, this gem hopes to make it a little easier for you to get information back from WA without faffing about with xml.}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "teen_wolf"
  gem.require_paths = ["lib"]
  gem.version       = TeenWolf::VERSION

  gem.add_dependency 'nokogiri', '~>1.8.2'
  gem.add_dependency  "bundler", '~>1.1.4'
  gem.add_dependency  'rake', '~>0.9.2.2'

  gem.add_development_dependency  'cucumber', '~>1.2.1'
  gem.add_development_dependency  'rspec', '~>2.11.0'
  gem.add_development_dependency  'rb-fsevent', '~>0.9.1'
  gem.add_development_dependency  'guard', '~>1.3.2'
  gem.add_development_dependency  'guard-rspec', '~>1.2.1'
  gem.add_development_dependency 'guard-cucumber', '~>1.2.0'
  gem.add_development_dependency  'turn', "~>0.9.6"

end
