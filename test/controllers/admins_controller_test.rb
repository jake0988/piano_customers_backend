require 'test_helper'

class AdminsControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get admin_create_url
    assert_response :success
  end

  test "should get show" do
    get admin_show_url
    assert_response :success
  end

end
