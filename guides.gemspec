# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib/', __FILE__)
$:.unshift lib unless $:.include?(lib)

require 'guides/version'

os = Gem::Platform.local.os
is_mingw = (os == "mingw32")

Gem::Specification.new do |s|
  s.name        = "guides"
  s.version     = Guides::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Yehuda Katz"]
  s.email       = ["wycats@gmail.com"]
  s.homepage    = "http://yehudakatz.com"
  s.summary     = %q{Extracting the Rails Guides framework for the rest of us}
  s.description = %q{A tool for creating version controlled guides for open source projects, based on the Rails Guides framework}
  s.licenses    = ['MIT']
  
  s.required_rubygems_version = ">= 1.3.6"
  s.rubyforge_project         = "guides"

  s.add_dependency "actionpack", "~> 4.2"
  s.add_dependency "activesupport", "~> 4.2"
  s.add_dependency "rack", "~> 1.6"
  s.add_dependency "RedCloth", "~> 4.2"
  s.add_dependency "maruku", "~> 0.7.2"
  s.add_dependency "thor", "~> 0.19.1"
  s.add_dependency "thin", "~> 1.2"
  s.add_dependency 'eventmachine', '~> 1.0'

  s.add_development_dependency 'rspec', '~> 2.0'
  s.add_development_dependency "faraday", "~> 0.9.2"

  s.files              = `git ls-files`.split("\n")
  s.test_files         = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables        = %w(guides)
  s.require_paths      = ["lib"]
end

