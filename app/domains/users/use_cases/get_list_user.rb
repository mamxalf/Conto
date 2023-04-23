# frozen_string_literal: true

class Users::UseCases::GetListUser < Abstracts::UseCase
  def initialize(params:, organization_id:)
    @params = params
    @organization_id = organization_id
  end

  def call
    # TODO: size limit
    pagy(User.includes([:organization]).where(organization_id: @organization_id), items: (params[:size] || nil))
  end

  private

  attr_reader :params
end
