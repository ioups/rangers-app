require "test_helper"

class PartyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get party_index_url
    assert_response :success
  end

  test "should get new" do
    get party_new_url
    assert_response :success
  end

  test "should get create" do
    get party_create_url
    assert_response :success
  end

  test "should get show" do
    get party_show_url
    assert_response :success
  end

  test "should get edit" do
    get party_edit_url
    assert_response :success
  end

  test "should get delete" do
    get party_delete_url
    assert_response :success
  end
end
