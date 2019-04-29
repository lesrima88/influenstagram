source 'https://rubygems.org'



# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.6', '>= 5.1.6.1'
gem 'gravatar_image_tag'
# Use sqlite3 as the database for Active Record

gem 'puma', '~> 3.7'
gem 'simple_form'
gem 'mail_form'
gem 'google-analytics-rails', '1.1.0'
gem 'semantic-ui-sass'
gem 'hirb', '~> 0.7.3'
gem 'friendly_id', '~> 5.2.4'
gem 'social-share-button'

# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
gem 'jquery-rails'
gem 'jquery-turbolinks'
source 'https://rails-assets.org' do
  gem 'rails-assets-tether', '>= 1.3.3'
  # add the line below
  gem 'rails-assets-chosen'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
#gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'link_thumbnailer'

# Use CoffeeScript for .coffee assets and views
#gem 'coffee-rails', '~> 4.2'
gem 'devise'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'




end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
  gem 'sqlite3','~> 1.3.13'
end

#group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
#  gem 'web-console', '>= 3.3.0'
#  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
#  gem 'spring'
#  gem 'spring-watcher-listen', '~> 2.0.0'
#end

group :production do
  # Access an IRB console on exception pages or by using <%= console %> in views
  gem 'pg' , '~> 0.20'
  gem 'rails_12factor'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
