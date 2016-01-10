# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'combo/version'

Gem::Specification.new do |spec|
  spec.name          = "combo"
  spec.version       = Combo::VERSION
  spec.authors       = ["Yasir Shoaib"]
  spec.email         = ["yasirshoaib@hotmail.com"]
  spec.summary       = %q{Combo}
  spec.description   = %q{Combo card game}
  spec.homepage      = "https://github.com/yshoaib/combo.git"
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]
  spec.add_development_dependency "bundler", "~> 1.11"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", "~> 3.0"
end
