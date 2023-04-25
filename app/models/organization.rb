# frozen_string_literal: true

class Organization < ApplicationRecord
  store_accessor :settings, :token
end
