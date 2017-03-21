source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.2'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'ransack'
gem 'kaminari'
gem 'devise'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'

gem 'jquery-rails'
gem 'gentelella-rails'
gem 'modernizr-rails'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'factory_girl_rails', require: false
  gem 'pry-rails'
  gem 'pry-remote'
  gem 'pry-byebug'
end

group :test do
  gem 'rspec-core', '~> 3.5'
  gem 'rspec-expectations', '~> 3.5'
  gem 'rspec-mocks', '~> 3.5'
  gem 'rspec-rails', '~> 3.5'
  gem 'rspec-support', '~> 3.5'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # gem 'spring'
  # gem 'spring-watcher-listen', '~> 2.0.0'
end
