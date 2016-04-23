# minitest.rake
require "rake/testtask"

desc '~Run all tests stored in "test/**/*_specs.rb"'
task :specs do 
	ruby '-Itest test/**/*_spec.rb'
end
# task :default => :test


# ALTERNATIVE RAKE SYNTAX BELOW
# # rake models
# Rake::TestTask.new(models: "db:test:prepare") do |t|
# 	t.libs << "test"
# 	t.pattern = "test/models/*_test.rb"
# end