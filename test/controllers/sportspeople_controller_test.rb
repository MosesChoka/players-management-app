require "test_helper"

class SportspeopleControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sportsperson = sportspeople(:one)
  end

  test "should get index" do
    get sportspeople_url
    assert_response :success
  end

  test "should get new" do
    get new_sportsperson_url
    assert_response :success
  end

  test "should create sportsperson" do
    assert_difference("Sportsperson.count") do
      post sportspeople_url, params: { sportsperson: { birthdate: @sportsperson.birthdate, email: @sportsperson.email, firstname: @sportsperson.firstname, lastname: @sportsperson.lastname, phone: @sportsperson.phone, position: @sportsperson.position, team: @sportsperson.team } }
    end

    assert_redirected_to sportsperson_url(Sportsperson.last)
  end

  test "should show sportsperson" do
    get sportsperson_url(@sportsperson)
    assert_response :success
  end

  test "should get edit" do
    get edit_sportsperson_url(@sportsperson)
    assert_response :success
  end

  test "should update sportsperson" do
    patch sportsperson_url(@sportsperson), params: { sportsperson: { birthdate: @sportsperson.birthdate, email: @sportsperson.email, firstname: @sportsperson.firstname, lastname: @sportsperson.lastname, phone: @sportsperson.phone, position: @sportsperson.position, team: @sportsperson.team } }
    assert_redirected_to sportsperson_url(@sportsperson)
  end

  test "should destroy sportsperson" do
    assert_difference("Sportsperson.count", -1) do
      delete sportsperson_url(@sportsperson)
    end

    assert_redirected_to sportspeople_url
  end
end
