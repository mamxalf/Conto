# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def after_sign_in_path_for(_resource)
    dashboards_url
  end

  def handle_result(redirect_url, result)
    if result.success?
      redirect_to(redirect_url, notice: notice_message(result.success))
    else
      redirect_to(redirect_url, alert: alert_message(result.failure))
    end
  end

  def notice_message(success_result)
    block_given? ? yield(success_result) : success_result
  end

  def alert_message(failure_result)
    block_given? ? yield(failure_result) : failure_result
  end

  def authorize_request
    organization_id = params[:organization]
    token = request.headers['Authorization']
    token = token.split(' ').last if token
    begin
      @organization = Organization.find(organization_id)
      render json: { errors: 'token invalid' }, status: :unauthorized if @organization.token != token
    rescue ActiveRecord::RecordNotFound => e
      render json: { errors: e.message }, status: :unauthorized
    rescue => e
      render json: { errors: e }, status: :unauthorized
    end
  end

  def hash_params
    Hashie::Mash.new(params)
  end
end
