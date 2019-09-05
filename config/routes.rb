Rails.application.routes.draw do
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  resources :users
  root 'cinema_pages#home'
  get 'posts/:id/new' => 'posts#new'
  post 'posts/:id/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/:id/update' => 'posts#create'
  post 'posts/:id/destroy' => 'posts#destroy'
  resources :posts, only: [:show]
  # get 'post/:id/new' => 'post#new'
  # get 'post/:id' => 'post#show'
  # post '/create' => 'post#create'
  get 'posts/:id/edit' => 'posts#edit'
  post 'posts/update' =>'posts#update'
  post 'posts/:id/destroy' => 'posts#detroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
