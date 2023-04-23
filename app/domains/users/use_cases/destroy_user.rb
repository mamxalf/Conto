# frozen_string_literal: true

class Users::UseCases::DestroyUser < Abstracts::UseCase
  def initialize(id:)
    @id = id
  end

  def call
    user = User.find_by(id: @id)
    if user.nil?
      Failure 'User not Found.'
    else
      return Failure user.errors.full_messages.first unless user.destroy

      Success 'User was successfully destroyed.'
    end
  end
end
