# minitest.rake
require "rake/testtask"

desc '~Run all tests stored in "test/**/*_integration_test.rb"'
task :integration do 
	ruby '-Itest test/**/*_integration_test.rb'
end
