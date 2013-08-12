# MassInsert

This gem aims to provide a simple and basic blogging engine in Rails.

## Getting started

Add this line to your application's Gemfile:

    gem 'rails_blog'

After you install RailsBlog and add it to your Gemfile, you need to run the generator:

    rails generate rails_blog:install

And this other generator:

    rails generate rails_blog:sidebar:views

Copy engine migrations

    rake rails_blog:install:migrations

Run them

    rake db:migrate

And in your routes.rb file add this...

    mount RailsBlog::Engine => '/blog'
