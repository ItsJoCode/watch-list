require "test_helper"

class User::BookmarksControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get user_bookmarks_new_url
    assert_response :success
  end
end
