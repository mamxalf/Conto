# frozen_string_literal: true

require 'test_helper'

class MocksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @mock = mocks(:one)
  end

  test 'should get index' do
    get mocks_url
    assert_response :success
  end

  test 'should get new' do
    get new_mock_url
    assert_response :success
  end

  test 'should create mock' do
    assert_difference('Mock.count') do
      post mocks_url, params: { mock: { destination: @mock.destination, path: @mock.path, request_method: @mock.request_method } }
    end

    assert_redirected_to mock_url(Mock.last)
  end

  test 'should show mock' do
    get mock_url(@mock)
    assert_response :success
  end

  test 'should get edit' do
    get edit_mock_url(@mock)
    assert_response :success
  end

  test 'should update mock' do
    patch mock_url(@mock), params: { mock: { destination: @mock.destination, path: @mock.path, request_method: @mock.request_method } }
    assert_redirected_to mock_url(@mock)
  end

  test 'should destroy mock' do
    assert_difference('Mock.count', -1) do
      delete mock_url(@mock)
    end

    assert_redirected_to mocks_url
  end
end
