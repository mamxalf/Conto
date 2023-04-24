# frozen_string_literal: true

class Routers::UseCases::GetMockRouter < Abstracts::UseCase
  def initialize(organization_id:, params:, request_method:)
    @organization_id = organization_id
    @params = params
    @request_method = request_method
  end

  def call
    router = Router.find_by(organization_id: @organization_id, path: @params[:path], request_method: @request_method.downcase)
    if router.nil?
      Failure 'Path not Found.'
    else
      Success router
    end
  end
end
