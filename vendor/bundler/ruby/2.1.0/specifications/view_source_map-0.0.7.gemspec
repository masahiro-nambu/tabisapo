# -*- encoding: utf-8 -*-
# stub: view_source_map 0.0.7 ruby lib

Gem::Specification.new do |s|
  s.name = "view_source_map"
  s.version = "0.0.7"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib"]
  s.authors = ["Ryo Nakamura"]
  s.date = "2014-04-02"
  s.description = "This is a Rails plugin to insert the path name of a rendered partial view as HTML comment in development environment"
  s.email = ["r7kamura@gmail.com"]
  s.homepage = "https://github.com/r7kamura/view_source_map"
  s.rubygems_version = "2.2.2"
  s.summary = "Rails plugin to view source map"

  s.installed_by_version = "2.2.2" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>, [">= 3.2"])
      s.add_development_dependency(%q<rspec-rails>, [">= 0"])
    else
      s.add_dependency(%q<rails>, [">= 3.2"])
      s.add_dependency(%q<rspec-rails>, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>, [">= 3.2"])
    s.add_dependency(%q<rspec-rails>, [">= 0"])
  end
end
