# frozen_string_literal: true

class Mock < ApplicationRecord
  after_save :register

  protected

  def register
    Engine::Router.reset
  end
end
