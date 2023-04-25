# frozen_string_literal: true

Rails.application.routes.draw do
  # user
  # get 'user/index'
  # delete 'user/destroy/:id', to: 'user#destroy', as: 'user_destroy'

  # dashboard
  get 'dashboards', to: 'dashboard#index'
  get 'settings', to: 'setting#index'


  # root: temporary
  root to: redirect('users/sign_in')

  # Devise
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # base router
  resources :routers
  resources :organizations
  resources :mocks

  # set wildcard router
  get '*organization/*path', to: 'mocks#serve_mock'
  post '*organization/*path', to: 'mocks#serve_mock'
  put '*organization/*path', to: 'mocks#serve_mock'
  patch '*organization/*path', to: 'mocks#serve_mock'
  delete '*organization/*path', to: 'mocks#serve_mock'
end
