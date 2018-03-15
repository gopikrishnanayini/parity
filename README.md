# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 2.3.0
* Rails version 5.1.5
* created a new rails application with mysql database (rails new parity -d mysql)
* opened the project path using cd parity
* bundled the project using bundle install command
* then rake db:create (i have created database in the mysql then given mysql root password in database.yml)
* added devise gem in gemfile 
* bundled the application using bundle install
* then i had runned rails generate devise:install
* then added a model to devise  using rails generate devise MODEL
* then migrated the database 
* then created users controller 
* then added root to user#index path in the config/routes 
* added resources for users  in the config/routes
* then added before_action in user_controller authenticate_model
* then added paperclip gem in the gemfile to upload the images in users model
* bundled the application 
* then created user model with columns tagline and name rails g model user tagline:string name:string
* then rails generate paperclip user image
* then i have migrated using rake db:migrate command
* then created actions new , create, index , and destroy and show actions in the users_controller
* then added haml gem in gemfile and bundled the gemfile 
* then created haml pages in the views 
* listing page created with image and tagline and owner name and using fancybox created a clickable image 
* and given destroy link in the below of the image to delete the image
* given link to sing-out the session after a user signed-in
* changed the database mysql to postgres for deployment in the heroku 