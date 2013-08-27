# RailsBlog

This gem aims to provide a simple and basic blogging engine in Rails 4 and it's fully customizable.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_blog'

And then execute:

    $ bundle install

Or install it yourself with:

    $ gem install mass_insert

## Getting started

Run this generator:

    rails generate rails_blog:install

And this other generator:

    rails generate rails_blog:sidebar:views

Copy engine migrations

    rake rails_blog:install:migrations

Run them

    rake db:migrate

Add this line to your application's Gemfile

    gem 'devise', github: 'plataformatec/devise', branch: 'rails4'

And in your routes.rb file add this...

    mount RailsBlog::Engine => '/blog'

Enjoy it.
