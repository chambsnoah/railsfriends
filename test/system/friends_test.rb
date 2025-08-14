require "application_system_test_case"

class FriendsTest < ApplicationSystemTestCase
  include Devise::Test::IntegrationHelpers

  setup do
    @friend = friends(:one)
    @user = users(:one)
    sign_in @user
  end

  test "visiting the index" do
    visit friends_url
    assert_selector "h1", text: "Friends"
  end

  test "should create friend" do
    visit friends_url
    click_on "New friend"

    fill_in "Email", with: "new@example.com"
    fill_in "First name", with: "New"
    fill_in "Last name", with: "Friend"
    fill_in "Phone", with: "555-1234"
    fill_in "Twitter", with: "newuser"
    click_on "Create Friend"

    assert_text "Friend was successfully created"
    click_on "Back"
  end

  test "should update Friend" do
    visit friend_url(@friend)
    click_on "Edit this friend", match: :first

    fill_in "Email", with: "updated@example.com"
    fill_in "First name", with: "Updated"
    fill_in "Last name", with: "Name"
    fill_in "Phone", with: "555-9999"
    fill_in "Twitter", with: "updated"
    click_on "Update Friend"

    assert_text "Friend was successfully updated"
    click_on "Back"
  end

  test "should destroy Friend" do
    visit friend_url(@friend)
    accept_confirm do
      click_on "Delete", match: :first
    end

    assert_text "Friend was successfully destroyed"
  end
end
