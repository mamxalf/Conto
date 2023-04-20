# frozen_string_literal: true

module Engine
  class Router
    def self.load_routes!
      test = [
        {
          path: 'test/1',
          destination: 'test#test',
          request_method: 'get',
          id: '1'
        },
        {
          path: 'test/2',
          destination: 'test#test',
          request_method: 'post',
          id: '2'
        }
      ]
      test.each do |t|
        Router.new.define_route t
      end
    end

    def define_route(mock)
      Conto::Application.routes.draw do
        send(:match, mock[:path], to: mock[:destination], defaults: { test: mock[:id] },
                                  via: mock[:request_method])
      end
    end
  end
end
