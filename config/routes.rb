Rails.application.routes.draw do
  root 'cinema_pages#home'
  get 'cinema_pages/show'
  get 'cinema_pages/create'
  get 'cinema_pages/new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
