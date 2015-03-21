# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'grape-present_cache/version'

Gem::Specification.new do |spec|
  spec.name          = 'grape-present_cache'
  spec.version       = Grape::PresentCache::VERSION
  spec.authors       = ['u2']
  spec.email         = ['zhangyaning1985@gmail.com']
  spec.summary       = 'Grape fragment cache.'
  spec.description   = 'Grape fragment cache.'
  spec.homepage      = 'https://github.com/u2/grape-present_cache'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'grape'
  spec.add_dependency 'activesupport'

  spec.add_development_dependency 'bundler', '~> 1.6'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rubocop', '0.28.0'
end
