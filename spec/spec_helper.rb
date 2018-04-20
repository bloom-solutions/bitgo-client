# frozen_string_literal: true

require "bitgo_client"

require "bundler/setup"
require "pry-byebug"
require "simplecov"
require "simplecov-console"

Dir["./spec/support/**/*.rb"].each { |file| require file }

RSpec.configure do |config|
  config.example_status_persistence_file_path = ".rspec_status"

  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

SimpleCov.formatter = SimpleCov.formatter = SimpleCov::Formatter::Console
SimpleCov.start
