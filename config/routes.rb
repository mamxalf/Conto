# frozen_string_literal: true

require 'engine/router'

Rails.application.routes.draw do
  # Defines the root path route ("/")
  Engine::Router.load_routes!
end
