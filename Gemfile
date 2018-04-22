source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
#commented out omniauth-twitter due to an error earlier today
gem 'nokogiri', '~> 1.6.8.rc2'
gem 'omniauth-twitter'
gem 'will_paginate', '~> 3.1', '>= 3.1.6'
gem 'inherited_resources', github: 'activeadmin/inherited_resources'
gem 'cancancan'
gem 'figaro' 
gem 'randumb'
gem 'twitter'
gem 'rails_admin', '~> 1.2'
#gem 'rmagick'  rmakick gave errors for some reason, during bundle update
gem 'rails_autolink', '~> 1.1', '>= 1.1.6'



gem 'aws-sdk', '< 2.0'
gem 'kaminari', '~> 0.17.0'
gem 'devise', '~> 4.2'
# gem 'paperclip', '~> 5.1'
gem 'paperclip', '~> 4.3.6'
gem 'simple_form', '~> 3.3', '>= 3.3.1'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails'
# Use postgresql as the database for Active Record
group :production do
  gem 'pg', '~> 0.18.4'
end


# Use Puma as the app server
gem 'puma', '~> 3.0'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

# Use jquery as the JavaScript library
gem 'jquery-rails'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platform: :mri
  gem 'pg', '~> 0.18.4'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
