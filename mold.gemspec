# frozen_string_literal: true

Gem::Specification.new do |spec|
  spec.name          = "mold"
  spec.version       = "0.1.1"
  spec.authors       = ["Shantanu Mishra"]
  spec.email         = ["dev@8hantanu.net"]

  spec.summary       = "A minimal, optimized, lightweight design for static sites."
  spec.homepage      = "https://github.com/yree/mold"
  spec.license       = "MIT"
  spec.files         = `git ls-files -z`.split("\x0").select { |f| f.match(%r!^(_layouts|_sass|assets|LICENSE|README|_config\.yml)!i) }

  spec.add_runtime_dependency "jekyll", "~> 3.9.0"
  spec.add_runtime_dependency "jekyll-feed", "~> 0.15.1"
  spec.add_runtime_dependency "jekyll-seo-tag", "~> 2.7.1"
end
