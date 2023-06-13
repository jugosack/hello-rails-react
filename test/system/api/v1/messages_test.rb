require "application_system_test_case"

class Api::V1::MessagesTest < ApplicationSystemTestCase
  setup do
    @api_v1_message = api_v1_messages(:one)
  end

  test "visiting the index" do
    visit api_v1_messages_url
    assert_selector "h1", text: "Messages"
  end

  test "should create message" do
    visit api_v1_messages_url
    click_on "New message"

    fill_in "Text", with: @api_v1_message.text
    click_on "Create Message"

    assert_text "Message was successfully created"
    click_on "Back"
  end

  test "should update Message" do
    visit api_v1_message_url(@api_v1_message)
    click_on "Edit this message", match: :first

    fill_in "Text", with: @api_v1_message.text
    click_on "Update Message"

    assert_text "Message was successfully updated"
    click_on "Back"
  end

  test "should destroy Message" do
    visit api_v1_message_url(@api_v1_message)
    click_on "Destroy this message", match: :first

    assert_text "Message was successfully destroyed"
  end
end
