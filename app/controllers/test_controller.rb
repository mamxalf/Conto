# frozen_string_literal: true

class TestController < ApplicationController
  def test
    render json: params
  end
end
