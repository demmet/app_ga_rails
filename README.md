# App Github Atlw Rails

This application is a remake of the [App Github Atlw](https://github.com/demmet/app_github_atlw) using Ruby on Rails.

## System dependencies

- Docker => [Install Docker](https://docs.docker.com/engine/installation/)

## System specification

- Ruby version: 2.3.3
- Rails version: 5.0.0.1
- PostgreSQL Database version: 10.1
- System tests: RSpec with Capybara and FactoryGirl

## System configuration

In order to run the application you need to execute the following commands on your terminal:

1. Build and Run the containers: `docker-compose up -d`
1. Enter container: `docker exec -it app_ga_rails bash`
1. Create the PostgreSQL database: `rake db:setup`
1. Run the Rails application: `rails s -b 0.0.0.0`
1. Now your application is running and you can access it through http://localhost:3000

## How to run the tests

To run the tests, after system configuration, execute the command:

1. `rspec`