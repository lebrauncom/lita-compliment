Gem::Specification.new do |spec|
  spec.name          = "lita-compliment"
  spec.version       = "0.2.0"
  spec.authors       = ["Joseph Kimberger"]
  spec.email         = ["another1liner@gmail.com"]
  spec.description   = "Generates a random compliment for someone"
  spec.summary       = "Compliment people in your chatroom"
  spec.homepage      = "https://github.com/kimberger/lita-compliment"
  spec.license       = "MIT"
  spec.metadata      = { "lita_plugin_type" => "handler" }

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "lita", ">= 4.6"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "pry-byebug"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rack-test"
  spec.add_development_dependency "rspec", ">= 3.0.0"
end
