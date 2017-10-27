source 'https://rubygems.org'

ruby '2.4.2'

gem 'rake'
gem 'hanami',       '~> 1.1'
gem 'hanami-model', '~> 1.1'

gem 'pg'

gem 'slim'

group :development do
  # Code reloading
  # See: http://hanamirb.org/guides/projects/code-reloading
  gem 'shotgun'
end

group :test, :development do
  gem 'hanami-fabrication'
  gem 'faker'
  gem 'pry'
  gem 'dotenv', '~> 2.0'
end

group :test do
  gem 'rspec'
  gem 'database_cleaner'
  gem 'capybara'
end

group :production do
  # gem 'puma'
end
