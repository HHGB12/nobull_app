source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.5.1'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.2.1'
# Use postgresql as the database for Active Record
gem 'pg', '>= 0.18', '< 2.0'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'babel-transpiler'
gem 'webpacker'
gem 'aws-sdk-s3'
gem 'sprockets', '~> 4.0.0.beta8'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'mini_racer', platforms: :ruby

# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Adds meta-tags to the app for SEO - https://github.com/kpumuk/meta-tags
gem 'meta-tags', '~> 2.10'

# Adds a search engine sitemap for SEO - https://github.com/kjvarga/sitemap_generator
gem 'sitemap_generator'

# Analytics for my site - https://github.com/ankane/ahoy
gem 'ahoy_matey'

# Geo data to avoid api calls.
gem 'maxminddb'

# More geodata, to set locale
gem 'geocoder'

# Used to generate the uid for ahoy to date_time
gem 'druuid'



# Use ActiveStorage variant
gem 'mini_magick', '~> 4.8'

gem 'active_storage_drag_and_drop'

# Authentication - devise
gem 'devise'
# Role - Rolify Adds roles to users. - https://github.com/RolifyCommunity/rolify
# gem 'rolify', '~> 5.2'
# Authorization - Pundit
gem 'pundit', '~> 2.0'
# Administrate -  Used to add an admin dashboard - https://github.com/thoughtbot/administrate
gem "administrate"

# Postmark for transactional mail - Read more: https://github.com/wildbit/postmark-rails/blob/master/README.md
gem 'postmark-rails'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
 gem 'bootsnap', '>= 1.3.1', require: false

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  # This will give me a better error page in development. Second is to support the first.
  gem "better_errors"
  gem "binding_of_caller"
  # Lets me view arays as tables
  gem 'table_print'
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
    # Adds pry, awesome print and Pry Cooline
  gem 'jazz_fingers'
  # Adds the pry-rails to add pry to rails
  gem 'pry-rails'
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
