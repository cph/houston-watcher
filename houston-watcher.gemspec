$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "houston/watcher/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name          = "houston-watcher"
  spec.version       = Houston::Watcher::VERSION
  spec.authors       = ["Matthew Kobs"]
  spec.email         = ["matt.kobs@cph.org"]

  spec.summary       = "Keep track of site status information in Houston"
  spec.description   = "Keep track of site status information in Houston"
  spec.homepage      = "https://github.com/cph/houston-watcher"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.require_paths = ["lib"]
  spec.test_files = Dir["test/**/*"]

  spec.add_dependency "houston-core", ">= 0.9.2"

  spec.add_development_dependency "bundler", "~> 1.17.2"
  spec.add_development_dependency "rake", "~> 10.0"
end
