require "test_helper"

class FriendsControllerTest < ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers

  setup do
    @friend = friends(:one)
    @user = users(:one)
    sign_in @user
  end

  test "should get index" do
    get friends_url
    assert_response :success
  end

  test "should get new" do
    get new_friend_url
    assert_response :success
  end

  test "should create friend" do
    assert_difference("Friend.count") do
      post friends_url, params: { friend: { email: "new@example.com", first_name: "New", last_name: "Friend", phone: "555-1234", twitter: "newuser" } }
    end

    assert_redirected_to friend_url(Friend.last)
  end

  test "should show friend" do
    get friend_url(@friend)
    assert_response :success
  end

  test "should get edit" do
    get edit_friend_url(@friend)
    assert_response :success
  end

  test "should update friend" do
    patch friend_url(@friend), params: { friend: { email: "updated@example.com", first_name: "Updated", last_name: "Name", phone: "555-9999", twitter: "updated" } }
    assert_redirected_to friend_url(@friend)
  end

  test "should destroy friend" do
    assert_difference("Friend.count", -1) do
      delete friend_url(@friend)
    end

    assert_redirected_to friends_url
  end
end
