# frozen_string_literal: true

class TestController < ApplicationController
  def test
    debugger
    render json: { test: 'test' }
  end
end
