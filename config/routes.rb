Rails.application.routes.draw do
  
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  post '/logout' => 'sessions#destroy'
  
  resources :users
  root 'cinema_pages#home'
  get 'post/:id/new' => 'post#new'
  post 'post/:id/create' => 'post#create'
  resources :post, only: [:show]
  # get 'post/:id/new' => 'post#new'
  # get 'post/:id' => 'post#show'
  # post '/create' => 'post#create'
  get 'post/:id/edit' => 'post#edit'
  post 'post/update' =>'post#update'
  post 'post/:id/destroy' => 'post#detroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
