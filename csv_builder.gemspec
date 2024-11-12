# frozen_string_literal: true

require_relative "lib/csv_builder/version"

Gem::Specification.new do |spec|
  spec.name = "csv_builder"
  spec.version = CsvBuilder::VERSION
  spec.authors = ["Usman"]
  spec.email = ["uxman.sherwani@gmail.com"]

  spec.summary = "Use rails templates for returning downloadable csv files"
  spec.description = spec.summary
  spec.homepage = "https://github.com/uxxman/csv_builder"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 3.1.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = spec.homepage
  spec.metadata["changelog_uri"] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "rails", ">= 7.1"
  spec.add_runtime_dependency "csv"

  spec.add_development_dependency "bundler", "~> 2.0"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
end