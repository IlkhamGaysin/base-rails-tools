source 'https://rubygems.org'
ruby '2.3.1'

gem 'rails', '~> 5.0.0', '>= 5.0.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'

# assets
gem 'coffee-rails', '~> 4.2'
gem 'foundation-rails', '~> 6.2.3.0'
gem 'jquery-rails'
gem 'sass-rails', '~> 5.0'
gem 'therubyracer', platforms: :ruby
gem 'uglifier', '>= 2.7.2'

# views
gem 'slim'

# main
gem 'metamagic'

group :test do
  gem 'capybara'
  gem 'codeclimate-test-reporter', require: false
  gem 'launchy'
  gem 'poltergeist'
  gem 'rspec-its'
  gem 'webmock', require: false
end

group :development, :test do
  gem 'awesome_print'
  gem 'brakeman', require: false
  gem 'bundler-audit', require: false
  gem 'coffeelint'
  gem 'dotenv-rails'
  gem 'pry-rails'
  gem 'rspec-rails', '~> 3.4'
  gem 'rubocop', require: false
  gem 'rubocop-rspec', require: false
  gem 'scss_lint', require: false
  gem 'slim_lint', require: false
end

group :development do
  gem 'bullet'
  gem 'foreman', require: false
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'web-console'
end
