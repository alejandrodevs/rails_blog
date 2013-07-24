RailsBlog::Engine.routes.draw do

  match "archive" => "archives#index", via: :get, as: "archive"
  match "search"  => "searches#index", via: :get, as: "search_posts"

  resources :posts, only: [:index]

	match "/:year/:month/:day/:id(.:format)" => "posts#show", via: "get", as: 'custom_post'

  root "posts#index"

end
