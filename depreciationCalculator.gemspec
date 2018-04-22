
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "depreciationCalculator/version"

Gem::Specification.new do |spec|
  spec.name          = "depreciationCalculator"
  spec.version       = DepreciationCalculator::VERSION
  spec.authors       = ["Mukul Gopinath"]
  spec.email         = ["x17123739@student.ncirl.ie"]

  spec.summary       = %q{Calculate the depreciated value of the car based on the parameter}
  spec.homepage      = "https://github.com/x17123739/depreciationCalculator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.16"
  spec.add_development_dependency "rake", "~> 10.0"
end