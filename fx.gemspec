# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require "fx/version"

Gem::Specification.new do |spec|
  spec.name          = "rankmi-fx"
  spec.version       = Rankmi::Fx::VERSION
  spec.authors       = [" Jhoynerk Caraballo", "Felipe Henriquez"]
  spec.email         = %w[jhoynerk.caraballo@rankmi.com felipe.henriquez@gmail.com]
  spec.summary       = %q{Support for database functions and triggers in Rails migrations}
  spec.description   = <<-DESCRIPTION
    Adds methods to ActiveRecord::Migration to create and manage database functions
    and triggers in Rails - allowing or not include the functions and triggers be included
    on the schema.rb
  DESCRIPTION
  spec.homepage      = "https://www.rankmi.com"
  spec.license       = 'MIT'

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^spec/})
  spec.require_paths = ['lib']

  spec.metadata    = { "github_repo" => "ssh://github.com/Rankmi/fx" }

  spec.add_development_dependency "appraisal", '~> 2.3.0'
  spec.add_development_dependency "bundler", '>= 1.5'
  spec.add_development_dependency "database_cleaner"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec", '>= 3.3'
  spec.add_development_dependency "pg"
  spec.add_development_dependency "pry"
  spec.add_development_dependency "ammeter", '>= 1.1.3'
  spec.add_development_dependency "yard"
  spec.add_development_dependency "redcarpet"

  spec.add_dependency "activerecord", '>= 4.0.0'
  spec.add_dependency "railties", '>= 4.0.0'

  spec.required_ruby_version = ">= 2.1"
end
