# -*- encoding: utf-8 -*-
require File.expand_path('../lib/eye', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = "Konstantin Makarchev"
  gem.email         = "kostya27@gmail.com"

  gem.description   = %q{Process monitoring tool. With Bluepill like config syntax. Requires MRI Ruby >= 1.9.2. Uses Celluloid and Celluloid::IO.}
  gem.summary       = %q{Process monitoring tool. With Bluepill like config syntax. Requires MRI Ruby >= 1.9.2. Uses Celluloid and Celluloid::IO.}
  gem.homepage      = "http://github.com/kostya/eye"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "eye"
  gem.require_paths = ["lib"]
  gem.version       = Eye::VERSION
  gem.license       = "MIT"

  gem.required_ruby_version     = '>= 1.9.2' # because of celluloid
  gem.required_rubygems_version = '>= 1.3.6'  
  
  gem.add_dependency 'celluloid',     '~> 0.12'
  gem.add_dependency 'celluloid-io',  '~> 0.12'
  gem.add_dependency 'state_machine'
  gem.add_dependency 'activesupport', '~> 3.2'
  gem.add_dependency 'thor'
  gem.add_dependency 'reel',          '~> 0.3.0'
  gem.add_dependency 'sinatra'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'rr'
  gem.add_development_dependency 'ruby-graphviz'
  gem.add_development_dependency 'forking'
  gem.add_development_dependency 'fakeweb'
  gem.add_development_dependency 'awesome_print'
end
