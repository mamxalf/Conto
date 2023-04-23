# frozen_string_literal: true

Rails.application.routes.draw do
  # user
  get 'user/index'
  delete 'user/destroy/:id', to: 'user#destroy', as: 'user_destroy'

  get 'dashboard/index'
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
  get '*organization/*url', to: 'mocks#serve_mock'
  post '*organization/*url', to: 'mocks#serve_mock'
  put '*organization/*url', to: 'mocks#serve_mock'
  patch '*organization/*url', to: 'mocks#serve_mock'
  delete '*organization/*url', to: 'mocks#serve_mock'
end
