require "test_helper"

class RaitingsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get raitings_index_url
    assert_response :success
  end

  test "should get new" do
    get raitings_new_url
    assert_response :success
  end

  test "should get create" do
    get raitings_create_url
    assert_response :success
  end

  test "should get show" do
    get raitings_show_url
    assert_response :success
  end

  test "should get edit" do
    get raitings_edit_url
    assert_response :success
  end

  test "should get update" do
    get raitings_update_url
    assert_response :success
  end

  test "should get destroy" do
    get raitings_destroy_url
    assert_response :success
  end
end
