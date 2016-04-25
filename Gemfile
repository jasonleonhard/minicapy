source 'https://rubygems.org'
ruby '2.3.0' # 2.2.3

gem 'rails', '4.2.5.2'
gem 'sqlite3'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :test do
	# includes rspec like syntax
  gem 'minitest'
	gem 'capybara'

  gem 'pry'
  gem 'database_cleaner'

  # rspec formatter
  # gem 'nyan-cat-formatter' 
    # rspec -f NyanCatFormatter 
    # rspec -f NyanCatMusicFormatter

  # For guard: Rails automatically generates a performance test stub in the test/performance directory which can trigger this error. Either add ruby-prof to your Gemfile (inside the test group):
  gem 'ruby-prof'
end

group :development, :test do
  gem 'guard-livereload'    # bundle exec guard init livereload
  # gem 'guard-rake'    # bundle exec guard init rake
  
  # gem 'rb-fsevent', :require => false if RUBY_PLATFORM =~ /darwin/1
  
  # gem 'guard-test'    # bundle exec guard init test #
  #  pry goodies
  gem 'pry-rails'
  gem 'pry-nav'

  # Testing Rspec
  gem 'factory_girl_rails'
  # gem "factory_girl_rails", "~> 4.0"
  gem 'rspec-rails'
  gem 'guard-rspec', require: false # bundle exec guard init rspec    
  gem 'shoulda-matchers'

  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug'
end

group :development do
# Testing Minitest
  gem 'guard'           # NOTE: this is necessary in newer versions
  gem 'guard-minitest'  # bundle exec guard init minitest #  Guard::Minitest is a better alternative to Guard::Test
    
  gem 'guard-rubocop'   # guard init rubocop # may not want

  gem 'jshint', require: false
  gem 'scss_lint', require: false
  gem 'slim_lint', require: false
  gem 'brakeman', require: false
  gem 'rubocop', require: false
  gem 'reek', require: false
  gem 'derailed', require: false
  gem 'stackprof', require: false
  # Utilities
  # gem 'dotgpg', require: false

  gem 'rb-readline' # guard requires for mac

  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

group :production do
  gem 'rails_12factor'
end
