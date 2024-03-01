require "application_system_test_case"

class SportspeopleTest < ApplicationSystemTestCase
  setup do
    @sportsperson = sportspeople(:one)
  end

  test "visiting the index" do
    visit sportspeople_url
    assert_selector "h1", text: "Sportspeople"
  end

  test "should create sportsperson" do
    visit sportspeople_url
    click_on "New sportsperson"

    fill_in "Birthdate", with: @sportsperson.birthdate
    fill_in "Email", with: @sportsperson.email
    fill_in "Firstname", with: @sportsperson.firstname
    fill_in "Lastname", with: @sportsperson.lastname
    fill_in "Phone", with: @sportsperson.phone
    fill_in "Position", with: @sportsperson.position
    fill_in "Team", with: @sportsperson.team
    click_on "Create Sportsperson"

    assert_text "Sportsperson was successfully created"
    click_on "Back"
  end

  test "should update Sportsperson" do
    visit sportsperson_url(@sportsperson)
    click_on "Edit this sportsperson", match: :first

    fill_in "Birthdate", with: @sportsperson.birthdate
    fill_in "Email", with: @sportsperson.email
    fill_in "Firstname", with: @sportsperson.firstname
    fill_in "Lastname", with: @sportsperson.lastname
    fill_in "Phone", with: @sportsperson.phone
    fill_in "Position", with: @sportsperson.position
    fill_in "Team", with: @sportsperson.team
    click_on "Update Sportsperson"

    assert_text "Sportsperson was successfully updated"
    click_on "Back"
  end

  test "should destroy Sportsperson" do
    visit sportsperson_url(@sportsperson)
    click_on "Destroy this sportsperson", match: :first

    assert_text "Sportsperson was successfully destroyed"
  end
end
