# frozen_string_literal: true

Rails.application.routes.draw do
  resources :mocks

  # set wildcard
  get '*url', to: 'mocks#serve_mock'
  post '*url', to: 'mocks#serve_mock'
  put '*url', to: 'mocks#serve_mock'
  patch '*url', to: 'mocks#serve_mock'
  delete '*url', to: 'mocks#serve_mock'
end
