lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = 'toolfan-command'
  spec.version       = '0.0.0'
  spec.authors       = ['Toolfan.org']
  spec.email         = ['admin@toolfan.org']
  spec.description   = %q{Command line helper for toolfan.org.}
  spec.summary       = %q{Command line helper for toolfan.org.}
  spec.homepage      = 'https://github.com/toolfan/toolfan-command'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.3'
  spec.add_development_dependency 'rake'
end
