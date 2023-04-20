class Api::ReloaderController < ActionController::API
  def trigger
    Engine::Router.load_routes!
    Rails.application.reload_routes!
  end
end
