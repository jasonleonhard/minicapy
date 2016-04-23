ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'

require "minitest/autorun" # alternativly require "rspec/autorun"
require "capybara/rails"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  # Add more helper methods to be used by all tests here...
end

# Rrequire for capbyara to run integration tests,
# tests that end with the word integration will now work
class IntegrationTest < MiniTest::Spec
	include Rails.application.routes.url_helpers
	include Capybara::DSL
	register_spec_type /integration$/, self
end
