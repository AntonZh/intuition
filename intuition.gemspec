$:.push File.expand_path('../lib', __FILE__)

require 'intuition/version'

Gem::Specification.new do |s|
  s.name        = 'intuition'
  s.version     = Intuition::VERSION
  s.platform    = Gem::Platform::RUBY

  s.summary     = 'Reporting'
  s.description = 'Reporting'
  s.authors     = ['Anton Zhavoronkov']
  s.email       = 'anton.zhavoronkov@gmail.com'
  s.homepage    = 'https://github.com/AntonZh/intuition'

  s.add_development_dependency 'bundler', '>= 1.0.0'
  s.add_development_dependency 'rspec', '~> 3.4.0'
  s.add_development_dependency 'simplecov', '~> 0.10.0'
  s.add_development_dependency 'guard-rspec', '~> 4.6.4'
  s.add_development_dependency 'ffaker', '~> 2.1.0'

  s.files        = `git ls-files`.split("\n")
  s.require_path = 'lib'

  s.license     = 'MIT'
end
