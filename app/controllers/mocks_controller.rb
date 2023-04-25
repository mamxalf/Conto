# frozen_string_literal: true

class MocksController < ApplicationController
  protect_from_forgery except: :serve_mock
  before_action :authorize_request

  # serve mock
  def serve_mock
    router = Routers::UseCases::GetMockRouter.new(organization_id: @organization.id, params: hash_params, request_method: request.method).call
    render json: router
  end
end
