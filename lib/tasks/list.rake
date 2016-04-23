# minitest.rake
require "rake/testtask"

desc '~List all rake tasks, alternativly use rake -T'
task :all do
  puts %x[rake -T]
end

desc '~List my rake tasks (~ in desc for grepping)'
task :mine do
  result = %x[rake -T | grep -i '~']
  result.each_line do |task|
    if ENV['HIDE_DOCS']
      puts task[0..task.index('#')-1].strip!
    else
      puts task
    end
  end
end