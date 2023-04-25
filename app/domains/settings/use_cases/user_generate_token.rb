# frozen_string_literal: true

class Settings::UseCases::UserGenerateToken < Abstracts::UseCase
  def initialize(organization_id:)
    @organization_id = organization_id
  end

  def call
    organization = Organization.find_by(id: @organization_id)
    Failure 'Organization not Found.' if organization.nil?
    token = TokenPhrase.generate(organization.name)
    if organization.update(token:)
      Success 'Token has been generated'
    else
      Failure "Token can't be generated"
    end
  end
end
