# frozen_string_literal: true

require_relative "lib/omniauth/on/version"

Gem::Specification.new do |spec|
  spec.name = "omniauth-on"
  spec.version = Omniauth::On::VERSION
  spec.authors = ["Jayson Camba"]
  spec.email = ["mjmcamba@gmail.com"]

  spec.summary = "Omniauth Strategy for Vantage"
  spec.description = "Omniauth Strategy for Vantage"
  spec.homepage = "https://github.com/jaysoncamba/omniauth_on"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = ""
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "https://github.com/jaysoncamba/omniauth_on"
  spec.metadata["changelog_uri"] = "https://github.com/jaysoncamba/omniauth_on"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"
  spec.add_dependency "omniauth-oauth2", '~> 1.5'

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
