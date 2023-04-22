# frozen_string_literal: true

Rails.application.routes.draw do
  # Devise
  devise_for :users, controllers: {
    sessions: 'users/sessions'
  }

  # base router
  resources :routers
  resources :organizations
  resources :mocks

  # set wildcard router
  get '*organization/*url', to: 'mocks#serve_mock'
  post '*organization/*url', to: 'mocks#serve_mock'
  put '*organization/*url', to: 'mocks#serve_mock'
  patch '*organization/*url', to: 'mocks#serve_mock'
  delete '*organization/*url', to: 'mocks#serve_mock'
end
