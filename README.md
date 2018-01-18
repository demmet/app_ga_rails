# App Github Atlw Rails

This application is a remake of the [App Github Atlw](https://github.com/demmet/app_github_atlw) using Ruby on Rails.

## System dependencies

- Docker => [Install Docker](https://docs.docker.com/engine/installation/)

## System specification

- Ruby version: 2.3.3
- Rails version: 5.0.0.1
- PostgreSQL Database

## System configuration

In order to run the application you need to execute the following commands on your terminal:

1. Build the Docker containers: `docker-compose build`
1. Run the containers: `docker-compose up -d`
1. Create the PostgreSQL database: `docker-compose run web rake db:create`
1. Now your application is running and you can access it through http://localhost:3000
