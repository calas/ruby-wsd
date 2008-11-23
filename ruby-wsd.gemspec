# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{ruby-wsd}
  s.version = "0.0.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Jorge Cal\303\241s Lozano"]
  s.date = %q{2008-11-23}
  s.description = %q{Ruby bindings for http://www.websequencediagrams.com}
  s.email = %q{calas@qvitta.net}
  s.extra_rdoc_files = ["CHANGELOG", "README.rdoc", "lib/wsd.rb"]
  s.files = ["CHANGELOG", "README.rdoc", "Rakefile", "lib/wsd.rb", "Manifest", "ruby-wsd.gemspec"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/calas/ruby-wsd/tree/master}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Ruby-wsd", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{ruby-wsd}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby bindings for http://www.websequencediagrams.com}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
