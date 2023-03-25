# Pizzas

# Description

This is the project made for the eighth code challenge done in Ruby

It is an pizza domain with this ERD:

![Screenshot from 2023-04-04 07-45-54](https://user-images.githubusercontent.com/117741313/229689402-c58b65e1-6fbc-4726-98ee-5d09af825ed1.png)

It contains deliverables with routes that have the following endpoints.

`GET /restaurants`

- Return a list of all Restaurants

`GET /restaurants/:id`

- Returns a restaurant with associated pizzas

`DELETE /restaurants/:id`

- Deletes/destroy restaurant along with its associations

`GET /pizzas`

- Returns a list of pizzas

`POST /restaurant_pizzas`

- Creates new Restaurant Pizza associated with existing ``Pizza` and `Restaurant`

## Project Setup

In order for you to use the content on this repo ensure you have the following:

- A computer that runs on Linux
- Ruby installed
- Any text editor such as VSCode installed

## Instructions

- Open a terminal on your computer
- Clone the repo by using the following:

        git clone https://github.com/ianrich69420/pizzas.git

- After the repository has been cloned succesfully change directory to the repository folder:

        cd pizzas

- Open it in a text editor of your choice, however I personally prefer using VSCode so in order to open the folder in VSCode do the following:

        code .

You can use the following steps to run the app:

- Install required dependencies

        bundle install

- Test out the domain by:

- Migrating the tables and seeding to a development database

        rails db:migrate db:seed

- And running the server

        rails s

## Author

This project was contributed to by:

- [Ian Richard Orieko](https://github.com/ianrich69420/)
