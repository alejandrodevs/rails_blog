# RailsBlog

This gem aims to provide a simple and basic blogging engine in Rails 4. Fully customizable.

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

Copy engine migrations

    rake rails_blog:install:migrations

Run them

    rake db:migrate

Add this line to your application's Gemfile

    gem 'devise', github: 'plataformatec/devise', branch: 'rails4'

And in your routes.rb file add this...

    mount RailsBlog::Engine => '/blog'

## Customize sidebar views

Run this generator and edit the generated files:

    rails generate rails_blog:sidebar:views

## Adding sidebar views

Add the sidebar views that you want and configure them in the rails_blog.rb initialize file.
Example...

Add the _example.html.erb file in app/views/rails_blog/sidebar folder in your application:

    # _example.html.erb file

    <h1>This is a sidebar view example</h1>

Include your new sidebar view in the rails_blog initializer file. Example...

```ruby
config.siderbar_widgets.add :search, order: 1
config.siderbar_widgets.add :about_us, order: 2
config.siderbar_widgets.add :latest_posts, order: 3
config.siderbar_widgets.add :example, order: 4  # <= Add your new sidebar view.
```

**NOTE:** The order option refers to the order that the sidebar views will be displayed.

Restart the server and it's done.

## Adding post comments

Run this generator:

    rails generate rails_blog:comments:views

## Enjoy it.
