source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.1.1'
# Use Puma as the app server
gem 'puma', '~> 5.0'
# Use postgresql as the database for Active Record
gem 'pg', '~> 1.2', '>= 1.2.3'
# Use SCSS for stylesheets
gem 'sass-rails', '>= 6'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 5.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.7'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'


# Add general gems
gem 'bulma-rails', '~> 0.9.1'
gem 'devise', '~> 4.7', '>= 4.7.3'
gem 'gravatar_image_tag', '~> 1.2'
gem 'hirb', '~> 0.7.3'
gem 'sentry-rails'
gem 'sentry-ruby'
gem 'simple_form', '~> 5.0', '>= 5.0.3'
gem 'shrine', '~> 3.3'
gem 'image_processing', '~> 1.12', '>= 1.12.1'
gem "shrine-cloudinary", "~> 1.1"

# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.4', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'database_cleaner', '~> 2.0', '>= 2.0.1'
  gem 'rspec-rails', '~> 4.0', '>= 4.0.2'
  gem 'sqlite3', '~> 1.4'
  gem 'dotenv-rails'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 4.1.0'
  # Display performance information such as SQL time and flame graphs for each request in your browser.
  # Can be configured to work on production as well see: https://github.com/MiniProfiler/rack-mini-profiler/blob/master/README.md
  gem 'listen', '~> 3.3'
  gem 'rack-mini-profiler', '~> 2.0'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  # Add guard and better errors
  gem 'better_errors', '~> 2.9', '>= 2.9.1'
  gem 'bullet', '~> 6.1', '>= 6.1.3'
  gem 'guard', '~> 2.16', '>= 2.16.2'
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false
end

group :test do
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 3.26'
  gem 'selenium-webdriver'
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'shoulda-matchers', '~> 4.5', '>= 4.5.1'
  gem 'webdrivers'
end
