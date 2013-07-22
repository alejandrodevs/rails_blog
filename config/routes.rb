RailsBlog::Engine.routes.draw do

  match "search" => "searches#index", via: :get, as: "search_posts"

  resources :posts

  root "posts#index"

end
