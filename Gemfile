# frozen_string_literal: true

source 'https://rubygems.org'

ruby '3.3.5'
gem 'bootsnap', require: false
gem 'devise', github: 'heartcombo/devise', ref: 'f8d1ea90bc3'
gem 'importmap-rails'
gem 'jbuilder'
gem 'mailgun-ruby', '~>1.3.2'
gem 'omniauth'
gem 'puma', '>= 5.0'
gem 'rails', '~> 7.1.4'
gem 'redis', '>= 4.0.1'
gem 'simple_form'
gem 'sprockets-rails'
gem 'sqlite3', '>= 1.4'
gem 'stimulus-rails'
gem 'turbo-rails'

# Use Kredis to get higher-level data types in Redis [https://github.com/rails/kredis]
# gem "kredis"

# Use Active Model has_secure_password [https://guides.rubyonrails.org/active_model_basics.html#securepassword]
# gem "bcrypt", "~> 3.1.7"

# Use Active Storage variants [https://guides.rubyonrails.org/active_storage_overview.html#transforming-images]
# gem "image_processing", "~> 1.2"

group :development, :test do
  # See https://guides.rubyonrails.org/debugging_rails_applications.html#debugging-with-the-debug-gem
  gem 'annotate'
  gem 'debug', platforms: %i[mri mingw x64_mingw]
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'rspec-rails'
end

group :development do
  gem 'letter_opener'
  gem 'rails_live_reload'

  # Use console on exceptions pages [https://github.com/rails/web-console]
  gem 'web-console'

  # Add speed badges [https://github.com/MiniProfiler/rack-mini-profiler]
  # gem "rack-mini-profiler"

  # Speed up commands on slow machines / big apps [https://github.com/rails/spring]
  # gem "spring"
end

group :test do
  # Use system testing [https://guides.rubyonrails.org/testing.html#system-testing]
  gem 'capybara'
  gem 'selenium-webdriver'
end

gem 'tailwindcss-rails', '~> 3.3.1'

gem 'dockerfile-rails', '>= 1.6', group: :development

gem 'pg', '~> 1.5'
