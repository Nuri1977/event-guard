# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  devise_for :users, controllers: { registrations: 'users/registrations', sessions: 'users/sessions' }
  get '/home', to: 'pages#home'
  get '/about', to: 'pages#about'
  get '/contact', to: 'pages#contact'
  post '/create_contact', to: 'pages#create_contact'
  resources :events, only: [:index, :show]

  namespace :dashboard do
    get '/home', to: 'pages#home'
    root to: 'pages#home'
    resources :events, only: [:index, :new, :create]
  end

  root to: 'pages#home'
end
