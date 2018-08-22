require 'test_helper'

class RegistersControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get registers_new_url
    assert_response :success
  end

  test "should get create" do
    get registers_create_url
    assert_response :success
  end

  test "should get destroy" do
    get registers_destroy_url
    assert_response :success
  end

end
