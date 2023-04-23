# frozen_string_literal: true

class UserController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'

  def index
    @pagy, @users = Users::UseCases::GetListUser.new(params).call
  end
end
