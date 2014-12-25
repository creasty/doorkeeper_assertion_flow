require_relative 'lib/doorkeeper/assertion_flow/version'

Gem::Specification.new do |spec|
  spec.name          = 'doorkeeper_assertion_flow'
  spec.version       = Doorkeeper::AssertionFlow::VERSION
  spec.authors       = ['Yuki Iwanaga']
  spec.email         = ['yuki@creasty.com']
  spec.summary       = 'OAuth assertion flow patch for doorkeeper'
  spec.description   = 'OAuth assertion flow patch for doorkeeper'
  spec.homepage      = 'https://github.com/creasty/doorkeeper_assertion_flow'
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'railties', '>= 4.0'
  spec.add_dependency 'doorkeeper', '>= 2.0'
end
