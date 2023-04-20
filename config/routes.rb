# frozen_string_literal: true

require 'engine/router'

Rails.application.routes.draw do
  namespace :api do
    post 'reloader/trigger'
  end
  # Defines the root path route ("/")
  Engine::Router.load_routes!
end
