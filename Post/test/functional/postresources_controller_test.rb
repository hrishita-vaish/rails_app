require 'test_helper'

class PostresourcesControllerTest < ActionController::TestCase
  setup do
    @postresource = postresources(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:postresources)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create postresource" do
    assert_difference('Postresource.count') do
      post :create, postresource: @postresource.attributes
    end

    assert_redirected_to postresource_path(assigns(:postresource))
  end

  test "should show postresource" do
    get :show, id: @postresource
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @postresource
    assert_response :success
  end

  test "should update postresource" do
    put :update, id: @postresource, postresource: @postresource.attributes
    assert_redirected_to postresource_path(assigns(:postresource))
  end

  test "should destroy postresource" do
    assert_difference('Postresource.count', -1) do
      delete :destroy, id: @postresource
    end

    assert_redirected_to postresources_path
  end
end
