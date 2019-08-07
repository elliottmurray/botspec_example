
require 'bundler/setup'
require 'byebug'
require 'botspec'
require 'chatbot_helpers'

RSpec.configure do |config|

  config.include(ChatbotHelpers)

  config.alias_example_group_to :dialogs
  config.alias_example_to :script

  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"
  config.expose_dsl_globally = true

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

