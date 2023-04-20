# frozen_string_literal: true

class Engine::Router
  def self.reset
    Rails.application.routes.clear!
    Rails.application.reload_routes!
  end
  def load_routes!
    mocks = Mock.all
    mocks.each do |mock|
      define_route mock
    end
  end

  private

  def define_route(mock)
    Conto::Application.routes.draw do
      self.send(:match, mock[:path], to: 'mocks#serve_mock', via: mock[:request_method])
    end
  end
end
