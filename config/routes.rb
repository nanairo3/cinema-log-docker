Rails.application.routes.draw do
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  root 'cinema_pages#home'
  
  resources :users
  
  resources :posts, only: [:show]
  get 'posts/:id/new' => 'posts#new'
  post 'posts/:id/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  patch 'posts/:id/update' => 'posts#update'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
