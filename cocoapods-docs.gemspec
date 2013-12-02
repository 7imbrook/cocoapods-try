# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cocoapods_try.rb'

Gem::Specification.new do |spec|
  spec.name          = "cocoapods-try"
  spec.version       = CocoapodsTry::VERSION
  spec.authors       = ["Fabio Pelosin"]
  spec.email         = ["fabiopelosin@gmail.com"]
  spec.description   = %q{Try a Pod!}
  spec.summary       = %q{Try a Pod!}
  spec.homepage      = "https://github.com/irrationalfab/cocoapods-try"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end
