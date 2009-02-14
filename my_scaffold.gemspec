# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{my_scaffold}
  s.version = "1.3.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Stefan Penner"]
  s.date = %q{2009-02-14}
  s.description = %q{TODO}
  s.email = %q{stefan.penner@gmail.com}
  s.files = ["VERSION.yml", "generators/my_model", "generators/my_model/my_model_generator.rb", "generators/my_model/templates", "generators/my_model/templates/factory.rb", "generators/my_model/templates/fixtures.yml", "generators/my_model/templates/migration.rb", "generators/my_model/templates/model.rb", "generators/my_model/templates/unit_test.rb", "generators/my_model/USAGE", "generators/my_scaffold", "generators/my_scaffold/my_scaffold_generator.rb", "generators/my_scaffold/templates", "generators/my_scaffold/templates/blueprint", "generators/my_scaffold/templates/blueprint/ie.css", "generators/my_scaffold/templates/blueprint/print.css", "generators/my_scaffold/templates/blueprint/screen.css", "generators/my_scaffold/templates/controller.rb", "generators/my_scaffold/templates/functional_test", "generators/my_scaffold/templates/functional_test/basic.rb", "generators/my_scaffold/templates/haml", "generators/my_scaffold/templates/haml/_form.html.haml", "generators/my_scaffold/templates/haml/edit.html.haml", "generators/my_scaffold/templates/haml/index.html.haml", "generators/my_scaffold/templates/haml/layout.html.haml", "generators/my_scaffold/templates/haml/new.html.haml", "generators/my_scaffold/templates/haml/show.html.haml", "generators/my_scaffold/templates/helper.rb", "generators/my_scaffold/USAGE", "lib/my_scaffold.rb", "test/environment.rb", "test/my_scaffold_test.rb", "test/test_helper.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://github.com/stefanpenner/my_scaffold}
  s.rdoc_options = ["--inline-source", "--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{TODO}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
    else
    end
  else
  end
end
