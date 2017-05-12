source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass', '~> 3.3.6'
gem 'cancancan', '~> 1.10'
gem 'carrierwave'
gem 'coffee-rails', '~> 4.2'
gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'jquery-rails'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'rails_admin', '~> 1.1.1'
gem 'remotipart', '~> 1.3', '>= 1.3.1'
gem 'sass-rails', '~> 5.0'
gem 'slim-rails'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'awesome_print'
  gem 'byebug', platform: :mri
  gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'
  gem 'factory_girl'
  gem 'faker'
  gem 'rspec-rails', '~> 3.5'
  gem 'test-unit'
end

group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'listen', '~> 3.0.5'
  gem 'pry'
  gem 'rubocop'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
