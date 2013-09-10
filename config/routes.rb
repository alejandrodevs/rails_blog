RailsBlog::Engine.routes.draw do

  devise_for :users, :class_name => "RailsBlog::User", :controllers => {:sessions  => "rails_blog/devise/sessions",
                                                                        :passwords => "rails_blog/devise/passwords",
                                                                        :unlocks   => "rails_blog/devise/unlocks"}

  match "archive" => "archives#index", via: :get, as: "archive"
  match "search"  => "searches#index", via: :get, as: "search_posts"

  resources :posts
  resources :users, only: [:show]

  namespace :administration do
    resources :posts
    resources :users
    root to: "posts#index"
  end

  put "profile/update"
  match "/profile" => "profile#index", :as => :profile, :via => :get
  match "/:year/:month/:day/:id(.:format)" => "posts#show", via: "get", as: 'custom_post'

  root "posts#index"

end
