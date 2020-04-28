Rails.application.routes.draw do
  get 'replies/new'
  get 'replies/create'
  get 'replies/edit'
  get 'replies/update'
  get 'replies/destroy'
  devise_for :users, :controllers => { registrations: 'registrations'}
  resources :tweeets
  resources :replies
  root 'tweeets#index'
  end
