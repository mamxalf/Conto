# frozen_string_literal: true

Rails.application.routes.draw do
  resources :mocks
  # Defines the root path route ("/")
  Engine::Router.new.load_routes! if ActiveRecord::Migrator.current_version > 0
end
