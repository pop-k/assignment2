Rails.application.routes.draw do
  get 'posts/main'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
get "/" => "root#top"
get "/main" => "posts#main"

get "/posts" => "posts#main"
post "/posts" => "posts#create"

get "/posts/:id" => "posts#show", as: "post"

get "/posts/:id/edit" => "posts#edit", as: "edit_post"

patch "/posts/:id" => "posts#update", as: "update_post"

delete "/posts/main/:id" => "posts#destroy", as: "destroy_post"
root :to => 'info#main'
end
