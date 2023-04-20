# frozen_string_literal: true

require 'test_helper'

class Api::TestControllerTest < ActionDispatch::IntegrationTest
  test 'should get test' do
    get api_test_test_url
    assert_response :success
  end
end
