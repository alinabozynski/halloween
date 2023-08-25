# Halloween

## Project Details:

* Bundler: 2.3.23
* Ruby version: 2.7.6
* Rails: 6.1.7
* SQLite3: 1.4
* Puma: 5.0
* sass-rails: 6
* webpacker: 5.0
* turbolinks: 5
* jbuilder: 2.7
* kaminari gem for pagination

## To Run this Application

Run in Windows Subsystem for Linux (Ubuntu) 

Clone repository in WSL.

Run `rbenv install 2.7.6` to manage different Ruby versions when running the next commands.

Run `bundle install` to ensure all dependencies and gems are installed.

Run `bundle exec rake webpacker:install` to use Webpacker as the Rails wrapper with standard configuration.

Run `rails db:migrate` to migrate the database.

Run `rails db:seed` to populate the database.

Run `rails s` to start the server on your localhost, and navigate to the specified port.

Finally, once you see the "Yay! You're on Rails" screen, update URL to /home to navigate to the home page.

## Trouleshooting Help

* At any point, if terminal requires an environment to be set, run `bin/rails db:environment:set RAILS_ENV=development`.
* If there are issues with with running rails db:migrate or rails db:seed, run `rails db:reset`, then `bundle exec rails db:migrate` and `rails db:seed` before starting the server.
