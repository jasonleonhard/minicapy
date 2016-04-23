# minitest.rake
require "rake/testtask"

desc '~List all rake tasks, alternativly use rake -T'
task :all do
  puts %x[rake -T]
end

desc '~List only my rake tasks (if they have a desc section)'
task :mine do
  result = %x[rake -T | grep -i '~'] # ~ so I can grep just mine
  result.each_line do |task|
    if ENV['HIDE_DOCS']
      puts task[0..task.index('#')-1].strip!
    else
      puts task
    end
  end
end

# rake test
desc '~run all tests stored in "test/**/*_test.rb"'
task :tests do 
	ruby '-Itest test/*.rb'
	# ruby '-Itest test/models/product_test.rb' # run just this one test
end
# task :default => :tests

# ALTERNATIVE RAKE SYNTAX BELOW
# # rake models
# Rake::TestTask.new(models: "db:test:prepare") do |t|
# 	t.libs << "test"
# 	t.pattern = "test/models/*_test.rb"
# end