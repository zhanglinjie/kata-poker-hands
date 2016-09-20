require "bundler/setup"
require "rake/testtask"

# Run the test with "rake" or "rake test"
desc "Default: run pocker hand unit tests."
task default: :test

desc "Test the pocker hand."
Rake::TestTask.new(:test) do |t|
  t.libs << "lib" << "test"
  t.pattern = "test/**/*_test.rb"
  t.verbose = false
end
