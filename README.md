# Tea Subscription

>

![ruby-image]

A rails back-end REST API. Eat and Educate allows a front-end app to find recipes from a country, and combine them with informative videos and images from that country. Also implements secure registration so users can favorite recipes. Created in a five day sprint.

Created with Rails 5.2.8

Reach out to me on [Linkedin](https://www.linkedin.com/in/gavin-carew-6476748a/) or  [Github](https://github.com/gjcarew) 

## <a name="contents"></a> Table of contents
- [Database setup](#database-setup)
- [Schema](#schema)
- [Documentation](#docs)


## <a name="database-setup"></a>Database Setup

Fork and clone the project, then `cd` into the repository you created. Install the required gems with `bundle`. 

```sh
bundle install
```
**Tea Subscription** uses the following non-standard gems:
- jsonapi-serializer
- rswag
- pry
- rspec-rails
- factory_bot_rails
- faker
- shoulda-matchers

Create and seed the database: 

```sh
rake db:{create,migrate,seed}
```
Start a rails server, and you're ready to query 
```sh
rails s
```
<br>

## <a name="schema"></a>Database Schema

<img src="./lib/Screen Shot 2023-01-05 at 12.47.41 PM.png" alt="The schema of the project." >

<br>

## <a name="docs"></a>Documentation

This project is self-documenting using Swagger. Once your server is running locally, go to http://localhost:3000/api-docs to see documentation for all endpoints. An example screenshot is below. 

<img src="./lib/Screen Shot 2023-01-05 at 12.55.53 PM.png" alt="An example of the Swagger docs" >


<!-- Markdown link & img dfn's -->
[ruby-image]: https://img.shields.io/badge/Ruby_on_Rails-CC0000?style=for-the-badge&logo=ruby-on-rails&logoColor=white