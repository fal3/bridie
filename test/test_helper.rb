ENV["RAILS_ENV"] ||= "test"
require File.expand_path('../../config/environment', __FILE__)
require 'rails/test_help'





class ActiveSupport::TestCase
  ActiveRecord::Migration.check_pending!



  # Setup all fixtures 
  in test/fixtures/*.yml for all tests in alphabetical order.
  
	Capybara.configure do |config|
	  config.match = :one
	  config.exact_options = true
	  config.ignore_hidden_elements = true
	  config.visible_text_only = true
	end
  #
  # Note: You'll currently still have to declare fixtures explicitly in integration tests
  # -- they do not yet inherit this setting
  fixtures :all

  # Add more helper methods to be used by all tests here...
end
