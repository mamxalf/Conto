# frozen_string_literal: true

require 'test_helper'

class RoutersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @router = routers(:one)
  end

  test 'should get index' do
    get routers_url
    assert_response :success
  end

  test 'should get new' do
    get new_router_url
    assert_response :success
  end

  test 'should create router' do
    assert_difference('Router.count') do
      post routers_url, params: { router: { organization_id: @router.organization_id, path: @router.path, request_method: @router.request_method } }
    end

    assert_redirected_to router_url(Router.last)
  end

  test 'should show router' do
    get router_url(@router)
    assert_response :success
  end

  test 'should get edit' do
    get edit_router_url(@router)
    assert_response :success
  end

  test 'should update router' do
    patch router_url(@router), params: { router: { organization_id: @router.organization_id, path: @router.path, request_method: @router.request_method } }
    assert_redirected_to router_url(@router)
  end

  test 'should destroy router' do
    assert_difference('Router.count', -1) do
      delete router_url(@router)
    end

    assert_redirected_to routers_url
  end
end
