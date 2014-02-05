# RailsBlog

This gem aims to provide a simple and basic blogging engine in Rails 4. Fully customizable.

## Installation

Add this line to your application's Gemfile:

    gem 'rails_blog'

And then execute:

    $ bundle install

## Getting started

Add this line to your application's Gemfile and execute bundle install:

    gem 'devise', github: 'plataformatec/devise', branch: 'rails4'

Run this generator:

    rails generate rails_blog:install

Copy engine migrations:

    rake rails_blog:install:migrations

Run them:

    rake db:migrate

Start solr server:

    rake sunspot:solr:start

And in your routes.rb file add this line:

    mount RailsBlog::Engine => '/blog'

Create an admin user in your console:

```ruby
RailsBlog::Admin.create(name: "name", email: "email", password: "password")
```

**Enjoy it!**

## Adding post comments

Run this generator and implement post comments in that file:

    rails generate rails_blog:comments:views

**Note:** That view will be rendered in the post show view.

## Sharing posts

Run this generator and add social sharing implementation in that file:

    rails generate rails_blog:sharing:views

**Note:** That view will be rendered in the post show view.

## Overwriting default sidebar views

Run this generator and edit the files:

    rails generate rails_blog:sidebar:views

## Adding sidebar views

The sidebar views should be in your `app/views/rails_blog/sidebar` folder and they should be configured in the `rails_blog.rb` initializer file.

###### Example...

Create `_example.html.erb` partial view in your `app/views/rails_blog/sidebar` folder.

```html
<h1>This is a sidebar view example</h1>
```

Configure the sidebar view in the `rails_blog.rb` initializer file:

```ruby
config.siderbar_widgets.add :example, order: 4  # <= Add your new sidebar view.
```

**Note:** The order option refers to the order that the sidebar views will be displayed.

Restart the server and it's done.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
