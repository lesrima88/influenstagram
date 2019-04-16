Rails.application.routes.draw do
  devise_for :users
  devise_for :models

resources :users
resources :contacts, only: [:new, :create]


resources :posts do
  resources :reviews
end

resources  :users do
 resources :posts, only: [:index]
end

get 'users/:id/user_posts' => 'users#user_posts', :as => :custom_user_posts

get 'posts/test'

get 'test/index'
get '/search' => 'posts#search', :as => 'search_page'

# add this line to link tags to posts with the respective tag
get 'tags/:tag', to: 'posts#index', as: :tag

root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
