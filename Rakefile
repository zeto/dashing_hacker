require 'rake'
require 'rake/testtask'

task :default => [:test_units]

desc "Run tests"
Rake::TestTask.new("test_units") do |t|
  t.pattern = 'test/*_test.rb'
  t.verbose = true
  t.warning = true
end


desc "Open an irb session"
task :console do
  sh "irb -I . -r lib/hacker_news.rb"
end