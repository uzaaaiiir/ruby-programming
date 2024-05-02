# frozen_string_literal: true

require_relative "lib/aaagmnr/version"

Gem::Specification.new do |spec|
  spec.name = "aaagmnr"
  spec.version = Aaagmnr::VERSION
  spec.authors = ["Noel Rappin"]
  spec.email = ["noel.rappin@pragprog.com"]

  spec.summary = "A simple anagrams tool"
  spec.homepage = "http://pragprog.com"
  spec.license = "MIT"
  spec.required_ruby_version = ">= 2.6.0"

  spec.metadata["homepage_uri"] = spec.homepage
  spec.metadata["source_code_uri"] = "http://pragprog.com"
  spec.metadata["changelog_uri"] = "http://pragprog.com"

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added
  # into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject do |f|
      (f == __FILE__) ||
        f.match(%r{\A(?:(?:test|spec|features)/|\.(?:git|travis|circleci)|appveyor)})
    end
  end
  spec.bindir = "exe"
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "date_by_example", '~> 0.1'
end
