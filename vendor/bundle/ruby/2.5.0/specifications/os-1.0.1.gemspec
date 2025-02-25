# -*- encoding: utf-8 -*-
# stub: os 1.0.1 ruby lib

Gem::Specification.new do |s|
  s.name = "os".freeze
  s.version = "1.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["rdp".freeze, "David McCullars".freeze]
  s.date = "2017-10-18"
  s.description = "The OS gem allows for some useful and easy functions, like OS.windows? (=> true or false) OS.bits ( => 32 or 64) etc\"".freeze
  s.email = "rogerpack2005@gmail.com".freeze
  s.extra_rdoc_files = ["ChangeLog".freeze, "LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["ChangeLog".freeze, "LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://github.com/rdp/os".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.6".freeze
  s.summary = "Simple and easy way to know if you're on windows or not (reliably), as well as how many bits the OS is, etc.".freeze

  s.installed_by_version = "2.7.6" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, ["~> 0.8"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 2.5.0"])
      s.add_development_dependency(%q<test-unit>.freeze, ["~> 3"])
    else
      s.add_dependency(%q<rake>.freeze, ["~> 0.8"])
      s.add_dependency(%q<rspec>.freeze, ["~> 2.5.0"])
      s.add_dependency(%q<test-unit>.freeze, ["~> 3"])
    end
  else
    s.add_dependency(%q<rake>.freeze, ["~> 0.8"])
    s.add_dependency(%q<rspec>.freeze, ["~> 2.5.0"])
    s.add_dependency(%q<test-unit>.freeze, ["~> 3"])
  end
end
