# frozen_string_literal: true

require File.expand_path('lib/lruhash/version', __dir__)

Gem::Specification.new do |gem|
  gem.name     = "lruhash"
  gem.version  = LruHash::VERSION
  gem.summary  = "A hash class with LRU semantics"
  gem.homepage = "http://github.com/invoca/lruhash"
  gem.description = "A hash class that is limited in size and discards old entries based on LRU - forked from http://github.com/oldmoe/lrudhash"

  gem.metadata = {
    'rubygems_mfa_required' => 'true'
  }
  gem.required_ruby_version = '>= 3.3'

  gem.authors  = ["Invoca Development"]
  gem.email    = "development@invoca.com"
  gem.platform = Gem::Platform::RUBY

  gem.files         = `git ls-files`.split($OUTPUT_RECORD_SEPARATOR)
  gem.executables   = gem.files.grep(%r{^bin/}).map { |f| File.basename(f) }

  gem.rdoc_options = ["--main", "README"]
  gem.extra_rdoc_files = ["README.md"]
end
