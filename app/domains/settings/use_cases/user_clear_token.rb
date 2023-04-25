# frozen_string_literal: true

class Settings::UseCases::UserClearToken < Abstracts::UseCase
  def initialize(organization_id:)
    @organization_id = organization_id
  end

  def call
    organization = Organization.find_by(id: @organization_id)
    Failure 'Organization not Found.' if organization.nil?
    if organization.update(token: nil)
      Success 'Token has been cleared'
    else
      Failure "Token can't be cleared"
    end
  end
end
