require 'test_helper'

class StaticHomePageControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get static_home_page_home_url
    assert_response :success
  end

end
