# frozen_string_literal: true

# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

MAILGUN_API_KEY = ENV.fetch('MAILGUN_API_KEY', '')
DEFAULT_HOST = ENV.fetch('DEFAULT_HOST', '')
