require "application_system_test_case"

class IdiotsTest < ApplicationSystemTestCase
  setup do
    @idiot = idiots(:one)
  end

  test "visiting the index" do
    visit idiots_url
    assert_selector "h1", text: "Idiots"
  end

  test "should create idiot" do
    visit idiots_url
    click_on "New idiot"

    fill_in "Name", with: @idiot.name
    click_on "Create Idiot"

    assert_text "Idiot was successfully created"
    click_on "Back"
  end

  test "should update Idiot" do
    visit idiot_url(@idiot)
    click_on "Edit this idiot", match: :first

    fill_in "Name", with: @idiot.name
    click_on "Update Idiot"

    assert_text "Idiot was successfully updated"
    click_on "Back"
  end

  test "should destroy Idiot" do
    visit idiot_url(@idiot)
    click_on "Destroy this idiot", match: :first

    assert_text "Idiot was successfully destroyed"
  end
end
