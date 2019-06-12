require 'test_helper'

class SellerControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get seller_index_url
    assert_response :success
  end

  test "should get new" do
    get seller_new_url
    assert_response :success
  end

  test "should get create" do
    get seller_create_url
    assert_response :success
  end

  test "should get update" do
    get seller_update_url
    assert_response :success
  end

  test "should get edit" do
    get seller_edit_url
    assert_response :success
  end

  test "should get destroy" do
    get seller_destroy_url
    assert_response :success
  end

end
