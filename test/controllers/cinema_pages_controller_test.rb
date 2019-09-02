require 'test_helper'

class CinemaPagesControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get cinema_pages_home_url
    assert_response :success
  end

  test "should get show" do
    get cinema_pages_show_url
    assert_response :success
  end

  test "should get create" do
    get cinema_pages_create_url
    assert_response :success
  end

  test "should get new" do
    get cinema_pages_new_url
    assert_response :success
  end

end
