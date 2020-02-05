lib = File.expand_path("lib", __dir__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "envalid/version"

Gem::Specification.new do |spec|
  spec.name          = "envalid"
  spec.version       = Envalid::VERSION
  spec.authors       = ["Lee Hambley"]
  spec.email         = ["lee.hambley@gmail.com"]

  spec.summary       = %q{Envalid allows validating and defining docs for environment variables}
  spec.description   = %q{Useful in 12factor apps, or generally to have a better experience than just reaching into ENV[] to configure your app, and something blowing up at runtime}
  spec.homepage      = "https://github.com/leehambley/envalid"
  spec.license       = "MIT"

  spec.metadata["allowed_push_host"] = "https://www.rubygems.org"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/leehambley/envalid"
  spec.metadata["changelog_uri"] = "https://github.com/leehambley/envalid/blob/master/CHANGELOG.md"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
