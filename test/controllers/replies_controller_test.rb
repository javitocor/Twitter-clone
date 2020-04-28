require 'test_helper'

class RepliesControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get replies_new_url
    assert_response :success
  end

  test "should get create" do
    get replies_create_url
    assert_response :success
  end

  test "should get edit" do
    get replies_edit_url
    assert_response :success
  end

  test "should get update" do
    get replies_update_url
    assert_response :success
  end

  test "should get destroy" do
    get replies_destroy_url
    assert_response :success
  end

end
