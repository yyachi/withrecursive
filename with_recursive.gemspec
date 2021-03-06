# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'with_recursive/version'

Gem::Specification.new do |spec|
  spec.name          = "with_recursive"
  spec.version       = WithRecursive::VERSION
  spec.authors       = ["Masafumi Imaoka"]
  spec.email         = ["m-imaoka@probizmo.co.jp"]
  spec.description   = %q{create with recursive associations}
  spec.summary       = %q{}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "activerecord", "~> 4.0"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "pg"
  spec.add_development_dependency "rspec", "3.0.0.beta1"
  spec.add_development_dependency "guard-rspec"
  spec.add_development_dependency "simplecov"
end
