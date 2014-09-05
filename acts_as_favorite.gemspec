# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = 'acts_as_favorite'
  s.version     = '0.1.0'
  s.authors     = ['Zac Zheng']
  s.email       = ['zac@zenpow.com']
  s.homepage    = 'https://github.com/zenpow/acts_as_favorite'
  s.summary     = 'Provides a simple way to track users favorites within the system using ActiveRecord models'
  s.description = s.summary

  s.rubyforge_project = 'acts_as_favorite'

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
