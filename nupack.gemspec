# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'nupack/version'

Gem::Specification.new do |spec|
  spec.name          = "nupack"
  spec.version       = Nupack::VERSION
  spec.authors       = ["Eduardo Prauze"]
  spec.email         = ["eduardoprauze@hotmail.com"]

  spec.summary       = "Nupack gem for jobs costs calculation"
  spec.description   = "Nupack gem for jobs costs calculation"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
