
lib = File.expand_path("../lib", __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "spec_tracker/version"

Gem::Specification.new do |spec|
  spec.name          = "spec_tracker"
  spec.version       = SpecTracker::VERSION
  spec.authors       = ["Joanna Vigné"]
  spec.email         = ["joanna.vigne@fabernovel.com"]

  spec.summary       = %q{Track tests that validate specification use cases}
  spec.description   = %q{Get an overview of your project traceability matrix.}
  spec.homepage      = %q{https://github.com/jvigne/spec_tracker}

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = "https://github.com/jvigne/spec_tracker"
    spec.metadata["changelog_uri"] = "https://github.com/jvigne/spec_tracker/CHANGELOG.md"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.17"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "byebug", '~> 9.0'
  spec.add_development_dependency "minitest-reporters", '~> 1.3'
  spec.add_dependency 'nokogiri', '~> 1.10'
  spec.add_dependency 'terminal-table', '~> 1.8'
  spec.add_dependency 'gemoji', '~> 3.0'
  spec.add_dependency 'thor', '~> 0.20'

  spec.required_ruby_version     = "~> 2.3"
end
