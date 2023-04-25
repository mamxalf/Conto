# frozen_string_literal: true

class SettingController < ApplicationController
  layout 'dashboard'
  def index
    @settings = Settings::UseCases::UserGetToken.new(organization_id: current_user.organization_id).call
  end

  def generate_token
    result = Settings::UseCases::UserGenerateToken.new(organization_id: current_user.organization_id).call
    handle_result(settings_url, result)
  end

  def clear_token
    result = Settings::UseCases::UserClearToken.new(organization_id: current_user.organization_id).call
    handle_result(settings_url, result)
  end
end
