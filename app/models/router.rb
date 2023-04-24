# frozen_string_literal: true

class Router < ApplicationRecord
  belongs_to :organization

  REQUEST_METHOD = %w[GET POST PUT PATCH DELETE].freeze
end
