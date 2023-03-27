require "test_helper"

class App::Controller::User::ListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get app_controller_user_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get app_controller_user_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get app_controller_user_lists_new_url
    assert_response :success
  end

  test "should get edit" do
    get app_controller_user_lists_edit_url
    assert_response :success
  end
end
