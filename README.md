# Sample Code for Acceptance Tests in Rails
We use rspec, capybara, cucumber to write acceptance tests. We also learn about redcarpet for rendering markdown, and simple_form for generating forms.

Below are the notes and takeways that I learns from doing this hands-on exercise.

## Rspec With Rails
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

### Rspec format documentation
By using the command `rspec --format=documentation`, instead of rendering the rspec tests using ..... (dots), it displays in in a nice, clean, descriptive way on the console
   
   
```
AchievementsController
 GET index
   renders index template
   assigns only public achievements to template
 GET edit
   renders edit template
   assigns the requested achievement to the templates
 PUT Update
   valid data
     redirects to achievements#show
     updates achievement in the database
   invalid data
     renders edit template
     doesn't update achievement in the database
 DELETE destroy
   redirects to achievements#index
   deletes the achievement from the database
 GET new
   renders :new template
   assigns new Achievement to @achievement
 GET show
   renders :show template
   assigns requested achievement to @achievement
 POST create
   valid data
     redirects to achievements#show
     creates new achievement in database
   invalid data
     renders :new template
     doesn't create a new achievement in the database

achievement page
 achievement public page
 render markdown description

create new achievement
 create new achievement with valid data
 can not create achievement with invalid data

home page
 welcome message

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


