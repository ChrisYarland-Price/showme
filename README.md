# README
A repository for our second project on the engineering course at sparta global. Built in Ruby on rails.



The navigation bar starts with the logo which is used throughout this links back to the index page. Then there are links that show up based on the users permissions all users have a link to the published projects. A spartan, will have a link to their projects, a staff member will have a link to all projects and the index of spartans. At the end, If the user is signed in they will be shown buttons that link to be able to edit their account or logout.
If the user is not signed in they will be shown the form to log in and a button to the sign up page.

On mobile the links and the login and registration methods are hidden and a button is used to show them below the logo.

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