
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "webpro_view_tool/version"

Gem::Specification.new do |spec|
  spec.name          = "webpro_view_tool"
  spec.version       = WebproViewTool::VERSION
  spec.authors       = ["Ben Brooks"]
  spec.email         = ["ben@brookswebpro.com"]

  spec.summary       = %q{Gem updates views with date and copyright info}
  spec.description   = %q{Gem creates methods for application which display date and copyright info}
  spec.homepage      = "http://www.brookswebpro.com"
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
