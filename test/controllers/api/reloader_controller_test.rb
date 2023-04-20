require "test_helper"

class Api::ReloaderControllerTest < ActionDispatch::IntegrationTest
  test "should get trigger" do
    get api_reloader_trigger_url
    assert_response :success
  end
end
