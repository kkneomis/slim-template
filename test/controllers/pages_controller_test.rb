require 'test_helper'

class PagesControllerTest < ActionController::TestCase
  test "should get login" do
    get :login
    assert_response :success
  end

  test "should get signup" do
    get :signup
    assert_response :success
  end

  test "should get profile" do
    get :profile
    assert_response :success
  end

  test "should get list_spaces" do
    get :list_spaces
    assert_response :success
  end

  test "should get datesearch" do
    get :datesearch
    assert_response :success
  end

  test "should get detail" do
    get :detail
    assert_response :success
  end

  test "should get booking" do
    get :booking
    assert_response :success
  end

  test "should get client_signup" do
    get :client_signup
    assert_response :success
  end

  test "should get create_space" do
    get :create_space
    assert_response :success
  end

  test "should get payment" do
    get :payment
    assert_response :success
  end

  test "should get home" do
    get :home
    assert_response :success
  end

end
