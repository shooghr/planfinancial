source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?('/')
  "https://github.com/#{repo_name}.git"
end

gem 'devise'
gem 'jbuilder', '~> 2.5'
gem 'kaminari'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'rails', '~> 5.0.2'
gem 'ransack'

group :assets do
  gem 'coffee-rails', '~> 4.2'
  gem 'gentelella-rails'
  gem 'jquery-rails'
  gem 'modernizr-rails'
  gem 'sass-rails', '~> 5.0'
end

gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails', require: false
  gem 'pry-byebug'
  gem 'pry-rails'
  gem 'pry-remote'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rspec'
  gem 'rspec-core', '~> 3.5'
  gem 'rspec-expectations', '~> 3.5'
  gem 'rspec-mocks', '~> 3.5'
  gem 'rspec-rails', '~> 3.5'
  gem 'rspec-support', '~> 3.5'
end

group :development do
  gem 'foreman'
  gem 'listen', '~> 3.0.5'
  gem 'rubocop', '~> 0.47.1', require: false
  gem 'web-console', '>= 3.3.0'
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end
