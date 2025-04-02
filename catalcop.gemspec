require_relative 'lib/catalcop/version'

Gem::Specification.new do |spec|
  spec.name          = "catalcop"
  spec.version       = Catalcop::VERSION
  spec.authors       = ["geeknees"]
  spec.email         = ["kawasaki@catal.jp"]

  spec.summary       = %q{RuboCop Catal}
  spec.description   = %q{Code style checking for Catal Ruby repositories.}
  spec.homepage      = "https://github.com/Catal/catalcop"
  spec.license       = "MIT"
  spec.required_ruby_version = Gem::Requirement.new(">= 2.3.0")

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files         = Dir.chdir(File.expand_path('..', __FILE__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "rubocop", '~> 1.72', '>= 1.72.1'
  spec.add_dependency "rubocop-capybara", '2.22.1'
  spec.add_dependency "rubocop-factory_bot", '2.27.1'
  spec.add_dependency "rubocop-performance", '1.24.0'
  spec.add_dependency "rubocop-rails", '2.31.0'
  spec.add_dependency "rubocop-rspec", '3.5.0'
  spec.add_dependency "rubocop-rspec_rails", '2.31.0'
end
