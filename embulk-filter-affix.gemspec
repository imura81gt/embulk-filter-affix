
Gem::Specification.new do |spec|
  spec.name          = "embulk-filter-affix"
  spec.version       = "0.1.0"
  spec.authors       = ["imura81gt"]
  spec.summary       = "Affix filter plugin for Embulk"
  spec.description   = "Affix"
  spec.email         = ["imura81gt@gmail.com"]
  spec.licenses      = ["MIT"]
  # TODO set this: spec.homepage      = "https://github.com/imura81gt/embulk-filter-affix"

  spec.files         = `git ls-files`.split("\n") + Dir["classpath/*.jar"]
  spec.test_files    = spec.files.grep(%r{^(test|spec)/})
  spec.require_paths = ["lib"]

  #spec.add_dependency 'YOUR_GEM_DEPENDENCY', ['~> YOUR_GEM_DEPENDENCY_VERSION']
  spec.add_development_dependency 'embulk', ['>= 0.8.17']
  spec.add_development_dependency 'bundler', ['>= 1.10.6']
  spec.add_development_dependency 'rake', ['>= 10.0']
end
