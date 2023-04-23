# frozen_string_literal: true

class UserController < ApplicationController
  before_action :authenticate_user!
  layout 'dashboard'

  def index
    @pagy, @users = Users::UseCases::GetListUser.new(params:, organization_id: current_user.organization_id).call
  end

  def destroy
    result = Users::UseCases::DestroyUser.new(id: params[:id]).call
    handle_result(user_index_url, result)
  end
end
