RailsBlog::Engine.routes.draw do

  match "archive" => "archives#index", via: :get, as: "archive"
  match "search"  => "searches#index", via: :get, as: "search_posts"

  resources :posts

  root "posts#index"

end
