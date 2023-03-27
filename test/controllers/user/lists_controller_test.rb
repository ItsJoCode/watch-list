require "test_helper"

class User::ListsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get user_lists_index_url
    assert_response :success
  end

  test "should get show" do
    get user_lists_show_url
    assert_response :success
  end

  test "should get new" do
    get user_lists_new_url
    assert_response :success
  end

  test "should get edit" do
    get user_lists_edit_url
    assert_response :success
  end
end
