require "application_system_test_case"

class ReceipesTest < ApplicationSystemTestCase
  setup do
    @receipe = receipes(:one)
  end

  test "visiting the index" do
    visit receipes_url
    assert_selector "h1", text: "Receipes"
  end

  test "should create receipe" do
    visit receipes_url
    click_on "New receipe"

    fill_in "Body", with: @receipe.body
    fill_in "Title", with: @receipe.title
    click_on "Create Receipe"

    assert_text "Receipe was successfully created"
    click_on "Back"
  end

  test "should update Receipe" do
    visit receipe_url(@receipe)
    click_on "Edit this receipe", match: :first

    fill_in "Body", with: @receipe.body
    fill_in "Title", with: @receipe.title
    click_on "Update Receipe"

    assert_text "Receipe was successfully updated"
    click_on "Back"
  end

  test "should destroy Receipe" do
    visit receipe_url(@receipe)
    click_on "Destroy this receipe", match: :first

    assert_text "Receipe was successfully destroyed"
  end
end
