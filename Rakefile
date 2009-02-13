require "rake"
require "rake/testtask"
require "rake/rdoctask"
require "rcov/rcovtask"

begin
  require "jeweler"
  Jeweler::Tasks.new do |s|
    s.name = "my_scaffold"
    s.summary = %Q{TODO}
    s.email = "stefan.penner@gmail.com"
    s.homepage = "http://github.com/stefanpenner/my_scaffold"
    s.description = "TODO"
    s.authors = ["Stefan Penner"]
  end
rescue LoadError
  puts "Jeweler not available. Install it with: sudo gem install technicalpickles-jeweler -s http://gems.github.com"
end

Rake::TestTask.new do |t|
  t.libs << "lib"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end

Rake::RDocTask.new do |rdoc|
  rdoc.rdoc_dir = "rdoc"
  rdoc.title    = "my_scaffold"
  rdoc.options << "--line-numbers" << "--inline-source"
  rdoc.rdoc_files.include("README*")
  rdoc.rdoc_files.include("lib/**/*.rb")
end

Rcov::RcovTask.new do |t|
  t.libs << "test"
  t.test_files = FileList["test/**/*_test.rb"]
  t.verbose = true
end

namespace :generator do
  desc "Cleans up the test app before running the generator"
  task :cleanup do
    puts "removing test rails app"
	system "sudo gem uninstall my_scaffold"
    system "rm -rf test/rails_test"
  end

  desc "Run the generator on the tests"
  task :generate do
    puts "building gem"
    system "rake gem"
    system "rake install"
    puts "generating rails app"
    FileUtils.cd("test")
    system "rails rails_test"
    puts "swapping environment.rb file"
    FileUtils.cp("environment.rb","rails_test/config/environment.rb")
    FileUtils.cd("rails_test")
    system "rake gems:unpack"
    puts "./script/generate my_scaffold apple name:string"
    system "./script/generate my_scaffold apple name:string"
    system "rake db:migrate"
    system "rake"
  end
end

