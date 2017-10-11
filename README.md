# README
A repository for our second project on the engineering course at sparta global. Built in Ruby on rails.

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

Notes on the index page for projects:
All projects are shown in a grid layout via the projects_each partial. However if you are logged in as a Sparta trainee you will be greeted with all your own projects. If you are logged in as a Sparta staff member you will see all projects by all trainees. If you are not a member then you will see all published projects.

Notes on different user access:
Using 'spartan_signed_in?' to restrict access to logged in users only and 'current_spartan.admin' to restrict access to admins only, different kinds of users are able to access different features, for example only admins are able to edit another user's project.

Notes on styling:
White background used throughout for consistency and minimalist styling.
Grey backgrounds behind text for ease of reading.
Font size minimum 16px for ease of reading.
Overwrite of bootstraps visited link colour for consistency.
Sparta colours used throughout for consistency.