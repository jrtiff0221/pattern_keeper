require 'test_helper'

class PatternsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get patterns_new_url
    assert_response :success
  end

  test "should get create" do
    get patterns_create_url
    assert_response :success
  end

  test "should get index" do
    get patterns_index_url
    assert_response :success
  end

  test "should get show" do
    get patterns_show_url
    assert_response :success
  end

  test "should get edit" do
    get patterns_edit_url
    assert_response :success
  end

  test "should get update" do
    get patterns_update_url
    assert_response :success
  end

  test "should get destroy" do
    get patterns_destroy_url
    assert_response :success
  end

end
