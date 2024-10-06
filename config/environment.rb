# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!
DEFAULT_HOST = ENV.fetch('DEFAULT_HOST', 'fakehost')
