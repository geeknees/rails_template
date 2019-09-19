after_bundle do
  run 'bundle exec rails generate rspec:install'
  git :init
  git add: "."
  git commit: %Q{ -m 'Initial commit' }
end

gem 'clockwork'
gem 'hamlit'
gem 'hamlit-rails'
gem 'high_voltage'
gem 'rack-cors'
gem 'rack-rewrite'
gem 'rack-user_agent'
gem 'seed-fu'
gem 'sidekiq'

gem_group :development, :test do
  gem 'awesome_print'
  gem 'pry-byebug'
  gem 'pry-doc'
  gem 'pry-rails'
  gem 'rspec-rails'
end

gem_group :test do
  gem 'capybara'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers'
  gem 'timecop'
end

gem_group :development do
  gem 'annotate'
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'bullet'
  gem 'letter_opener'
  gem 'neovim'
  gem 'rack-mini-profiler'
  gem 'rails_best_practices'
  gem 'refe2'
  gem 'solargraph'
end
