require 'engine/router'

Rails.application.routes.draw do
  get 'test/test', action: :test, controller: 'test'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Engine::Router.load_routes!
end
