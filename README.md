# MassInsert

This gem aims to provide a simple and basic blogging engine in Rails.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_blog'

And then execute:

    $ bundle install

Or install it yourself with:

    $ gem install rails_blog

## Usage

Copy engine migrations

    rake rails_blog:install:migrations

And in your routes.rb file add this...

    mount RailsBlog::Engine => '/blog'
