require 'test_helper'

class TestjsonsControllerTest < ActionController::TestCase
  setup do
    @testjson = testjsons(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:testjsons)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create testjson" do
    assert_difference('Testjson.count') do
      post :create, testjson: { end: @testjson.end, requestor: @testjson.requestor, start: @testjson.start, title: @testjson.title }
    end

    assert_redirected_to testjson_path(assigns(:testjson))
  end

  test "should show testjson" do
    get :show, id: @testjson
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @testjson
    assert_response :success
  end

  test "should update testjson" do
    patch :update, id: @testjson, testjson: { end: @testjson.end, requestor: @testjson.requestor, start: @testjson.start, title: @testjson.title }
    assert_redirected_to testjson_path(assigns(:testjson))
  end

  test "should destroy testjson" do
    assert_difference('Testjson.count', -1) do
      delete :destroy, id: @testjson
    end

    assert_redirected_to testjsons_path
  end
end
