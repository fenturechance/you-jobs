# Copyright 2017 Google, Inc
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

source "https://rubygems.org"

git_source :github do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include? "/"
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.1.3"

# Use sqlite3 as the database for Active Record
gem "sqlite3", "~> 1.3.6"
# Use Puma as the app server
gem "puma", "~> 3.7"
# Use SCSS for stylesheets
gem "sass-rails", "~> 5.0"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem "jbuilder", "~> 2.5"
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: [:mri, :mingw, :x64_mingw]

  gem "rails-controller-testing"
  gem "rspec_junit_formatter"
  gem "rspec-rails"
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem "listen", ">= 3.0.5", "< 3.2"
  gem "web-console", ">= 3.3.0"
end

group :test do
  gem "capybara"
  gem "poltergeist"
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: [:mingw, :mswin, :x64_mingw, :jruby]

# [START gems]
# Added at 2017-08-07 11:54:06 -0700 by USER:
gem "mysql2", "~> 0.4.8"

# Added at 2017-08-07 11:54:12 -0700 by USER:
gem "appengine", "~> 0.4.1"
# [END gems]
