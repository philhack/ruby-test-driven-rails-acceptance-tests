# Sample Code for Acceptance Tests in Rails
We use rspec, capybara, cucumber to write acceptance tests. We also learn about redcarpet for rendering markdown, and simple_form for generating forms.

Below are the notes and takeways that I learns from doing this hands-on exercise.

## How to Wire Up RSpec to Rails
### Install Gems
```
group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'spring'
  gem 'spring-commands-rspec'

end

group :test do
  gem 'capybara'
end
```

### Create Files
```
rails g rspec:install
bundle exec spring binstub --all
```

### Running Tests
```
rspec
```

### Ignoring Tests

You can ignore a test by placing the keyword `pending` inside the rspec test
```
pending
```

### Removing Code Commands
Regex to remove all code comment lines:
```
^#.*\n
```


## Setting Up RuboCop
One of the ways to get used to a new language is to adhere to best practices.

gem 'rubocop', require: false
Place the [.rubocop.yml](https://raw.githubusercontent.com/deliveroo/roo_on_rails/master/.rubocop.yml) file at the root of the project
run `rubocop` and we can see how many offences we have


## FactoryGirl

* `FactoryGirl.create` - creates items in the DB
* `FactoryGirl.build` - only generates the model and stores it in memory
* `FactoryGirl.create_list` - creates several records and saves them to the DB
* `FactoryGirl.build_list` - creates several records in memory

## database_cleaner
* Recommended to use the [database_cleaner](https://github.com/DatabaseCleaner/database_cleaner) with cucumber and rspec

## Cucumber
1. create a `.feature` file
2. run bin/cucumber
3. copy the generated contents that are output in the console
4. create an achievement_page.rb file paste them into it


