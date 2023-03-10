require_relative "lib/hdi/ways_of_working/version"

Gem::Specification.new do |spec|
  spec.name        = "hdi-ways_of_working"
  spec.version     = Hdi::WaysOfWorking::VERSION
  spec.authors     = ["Tim Gentry"]
  spec.email       = ["52189+timgentry@users.noreply.github.com"]
  spec.homepage    = "https://github.com/HealthDataInsight/hdi-ways_of_working"
  spec.summary     = "Ruby on Rails plugin for HDI Ways of working."
  # spec.description = "TODO: Description of Hdi::WaysOfWorking."
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the "allowed_push_host"
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  # spec.metadata["allowed_push_host"] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata["homepage_uri"] = spec.homepage
  # spec.metadata["source_code_uri"] = "TODO: Put your gem's public repo URL here."
  # spec.metadata["changelog_uri"] = "TODO: Put your gem's CHANGELOG.md URL here."

  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    Dir["{app,config,db,lib}/**/*", "LICENSE.txt", "Rakefile", "README.md"]
  end

  spec.add_dependency "rails", ">= 6.0"
end
