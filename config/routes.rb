Rails.application.routes.draw do
  get 'post/:id/new', to: 'post#new', as: :post_new
  get 'post/:id', to: 'post#show', as: :post_show
  post '/create', to: 'post#create'
  get 'post/:id/edit', to: 'post#edit'
  post 'post/update', to: 'post#update'
  get 'post/destroy', to: 'post#detroy'
  root 'cinema_pages#home'
  get 'cinema_pages/show'
  get 'cinema_pages/create'
  get 'cinema_pages/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
