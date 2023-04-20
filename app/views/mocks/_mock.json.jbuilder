# frozen_string_literal: true

json.extract! mock, :id, :path, :request_method, :created_at, :updated_at
json.url mock_url(mock, format: :json)
