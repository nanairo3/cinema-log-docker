Rails.application.routes.draw do
  root 'cinema_pages#home'
  get 'post/:id/new' => 'post#new'
  post 'post/:id/create' => 'post#create'
  resources :post, only: [:show]
  # get 'post/:id/new' => 'post#new'
  # get 'post/:id' => 'post#show'
  # post '/create' => 'post#create'
  get 'post/:id/edit' => 'post#edit'
  post 'post/update' =>'post#update'
  get 'post/destroy' => 'post#detroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
