require 'test_helper'

class MurmursControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get murmurs_index_url
    assert_response :success
  end

  test "should get show" do
    get murmurs_show_url
    assert_response :success
  end

  test "should get edit" do
    get murmurs_edit_url
    assert_response :success
  end

  test "should get new" do
    get murmurs_new_url
    assert_response :success
  end

  test "should get create" do
    get murmurs_create_url
    assert_response :success
  end

  test "should get update" do
    get murmurs_update_url
    assert_response :success
  end

  test "should get destroy" do
    get murmurs_destroy_url
    assert_response :success
  end

end
