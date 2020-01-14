require 'test_helper'

class OrderingControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get ordering_index_url
    assert_response :success
  end

  test "should get show" do
    get ordering_show_url
    assert_response :success
  end

  test "should get new" do
    get ordering_new_url
    assert_response :success
  end

  test "should get edit" do
    get ordering_edit_url
    assert_response :success
  end

end
