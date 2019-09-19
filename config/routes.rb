# frozen_string_literal: true

Rails.application.routes.draw do
  root 'cinema_pages#home'

  devise_for :users, controllers: {
    registrations: 'users/registrations',
    sessions: 'users/sessions'
  }

  devise_scope :user do
    get 'signup', to: 'users/registrations#new'
    get 'login', to: 'users/sessions#new'
    get 'logout', to: 'users/sessions#destroy'
  end

  resources :users, only: %i[index show]
  resources :cinema_pages, only: [:show]

  get 'setting/password', to: 'users#edit_password'
  patch 'setting/password', to: 'users#update_password'

  resources :posts, only: [:show]
  get 'posts/:id/new' => 'posts#new'
  post 'posts/:id/create' => 'posts#create'
  get 'posts/:id/edit' => 'posts#edit'
  patch 'posts/:id/update' => 'posts#update'
  post 'posts/:id/update' => 'posts#update'
  post 'posts/:id/destroy' => 'posts#destroy'
  
  post 'watched_cinemas/:id/create' => 'watched_cinemas#create'
  post 'watched_cinemas/:id/destroy' => 'watched_cinemas#destroy'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
