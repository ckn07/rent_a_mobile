require 'test_helper'

class MobilesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get mobiles_index_url
    assert_response :success
  end

  test "should get show" do
    get mobiles_show_url
    assert_response :success
  end

  test "should get new" do
    get mobiles_new_url
    assert_response :success
  end

  test "should get edit" do
    get mobiles_edit_url
    assert_response :success
  end

end
