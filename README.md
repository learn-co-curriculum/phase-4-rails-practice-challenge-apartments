# Apartments App

## Setup

To download the dependencies for backend, run:

```sh
bundle install
```

There is some starter code in the `db/seeds.rb` file so that once you've
generated the models, you'll be able to create data to test your application.

You can run your Rails API on [`localhost:3000`](http://localhost:3000) by running:

```sh
rails s
```
Check your progress by: Running the Rails server and using Postman make requests

## Introduction

We're going to build an app for a Gym create the following database structure:

- You will have three models (and their corresponding tables) `Apartment`, `Tenant` and `Lease`
- A Tenant `has_many` apartments and `has_many` leases
- An apartment `has_many` tenants and `has_many` leases
- A lease `belongs_to` an apartment and `belongs_to` a tenant

# Deliverables:

* The ability to create, read, update and delete **Apartment**
* Apartment will have a number
* The ability to create, read, update and delete **Tenant**
* Tenant will have name and age
* The ability to create and delete **Lease**
* Make sure tenant created without a name.
* Make sure tenant's age is >= 18 years.

# Instructions:
* Fork this repository
* Time yourself while working on the deliverables
* Prioritize associations (being able to select an instructor for a student)
* Commit when you hit 75 minutes
* When you have finished all deliverables, commit again.