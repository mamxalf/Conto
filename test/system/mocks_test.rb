# frozen_string_literal: true

require 'application_system_test_case'

class MocksTest < ApplicationSystemTestCase
  setup do
    @mock = mocks(:one)
  end

  test 'visiting the index' do
    visit mocks_url
    assert_selector 'h1', text: 'Mocks'
  end

  test 'should create mock' do
    visit mocks_url
    click_on 'New mock'

    fill_in 'Destination', with: @mock.destination
    fill_in 'Path', with: @mock.path
    fill_in 'Request method', with: @mock.request_method
    click_on 'Create Mock'

    assert_text 'Mock was successfully created'
    click_on 'Back'
  end

  test 'should update Mock' do
    visit mock_url(@mock)
    click_on 'Edit this mock', match: :first

    fill_in 'Destination', with: @mock.destination
    fill_in 'Path', with: @mock.path
    fill_in 'Request method', with: @mock.request_method
    click_on 'Update Mock'

    assert_text 'Mock was successfully updated'
    click_on 'Back'
  end

  test 'should destroy Mock' do
    visit mock_url(@mock)
    click_on 'Destroy this mock', match: :first

    assert_text 'Mock was successfully destroyed'
  end
end
