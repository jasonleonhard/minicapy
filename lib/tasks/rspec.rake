# minitest.rake
require "rake/testtask"

desc '~Run all tests stored in "test/**/*_test.rb"'
task :tests do 
	ruby '-Itest test/**/*_spec.rb'
end