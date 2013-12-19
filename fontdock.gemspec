# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fontdock/version'

Gem::Specification.new do |spec|
  spec.name          = "fontdock"
  spec.version       = Fontdock::VERSION
  spec.authors       = ["Masafumi Yokoyama"]
  spec.email         = ["myokoym@gmail.com"]
  spec.description   = %q{A toolbox for managing font families.}
  spec.summary       = %q{Fonts Toolbox}
  spec.homepage      = "https://github.com/myokoym/fontdock"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) {|f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency("pango")
  spec.add_runtime_dependency("thor")

  spec.add_development_dependency("bundler", "~> 1.3")
  spec.add_development_dependency("rake")
end
