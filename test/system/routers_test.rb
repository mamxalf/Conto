# frozen_string_literal: true

require 'application_system_test_case'

class RoutersTest < ApplicationSystemTestCase
  setup do
    @router = routers(:one)
  end

  test 'visiting the index' do
    visit routers_url
    assert_selector 'h1', text: 'Routers'
  end

  test 'should create router' do
    visit routers_url
    click_on 'New router'

    fill_in 'Organization', with: @router.organization_id
    fill_in 'Path', with: @router.path
    fill_in 'Request method', with: @router.request_method
    click_on 'Create Router'

    assert_text 'Router was successfully created'
    click_on 'Back'
  end

  test 'should update Router' do
    visit router_url(@router)
    click_on 'Edit this router', match: :first

    fill_in 'Organization', with: @router.organization_id
    fill_in 'Path', with: @router.path
    fill_in 'Request method', with: @router.request_method
    click_on 'Update Router'

    assert_text 'Router was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Router' do
    visit router_url(@router)
    click_on 'Destroy this router', match: :first

    assert_text 'Router was successfully destroyed'
  end
end
