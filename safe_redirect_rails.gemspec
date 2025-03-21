# frozen_string_literal: true

require_relative "lib/safe_redirect_rails/version"

Gem::Specification.new do |spec|
  spec.name = "safe_redirect_rails"
  spec.version = SafeRedirectRails::VERSION
  spec.authors = ["Tuan Pham"]
  spec.email = ["tuanpt1702@gmail.com"]

  spec.summary = "This gem provides a simple way to redirect to safe URLs"
  spec.description = "This gem provides a simple way to redirect to safe URLs"
  spec.required_ruby_version = ">= 2.6.0"
  spec.metadata["homepage_uri"] = "https://github.com/JackoPham/safe_redirect_rails"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) ||
        f.start_with?(*%w[bin/ test/ spec/ features/ .git .github appveyor Gemfile])
    end
  end
end
