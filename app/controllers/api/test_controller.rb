# frozen_string_literal: true

class Api::TestController < ActionController::API
  def test
    render json: params
  end
end
