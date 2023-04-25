# frozen_string_literal: true

class Settings::UseCases::UserGetToken < Abstracts::UseCase
  def initialize(organization_id:)
    @organization_id = organization_id
  end

  def call
    Organization.select(:settings).find_by(id: @organization_id)
  end
end
