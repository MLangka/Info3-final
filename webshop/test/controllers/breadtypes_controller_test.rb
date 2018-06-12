require 'test_helper'

class BreadtypesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @breadtype = breadtypes(:one)
  end

  test "should get index" do
    get breadtypes_url
    assert_response :success
  end

  test "should get new" do
    get new_breadtype_url
    assert_response :success
  end

  test "should create breadtype" do
    assert_difference('Breadtype.count') do
      post breadtypes_url, params: { breadtype: { description: @breadtype.description, name: @breadtype.name } }
    end

    assert_redirected_to breadtype_url(Breadtype.last)
  end

  test "should show breadtype" do
    get breadtype_url(@breadtype)
    assert_response :success
  end

  test "should get edit" do
    get edit_breadtype_url(@breadtype)
    assert_response :success
  end

  test "should update breadtype" do
    patch breadtype_url(@breadtype), params: { breadtype: { description: @breadtype.description, name: @breadtype.name } }
    assert_redirected_to breadtype_url(@breadtype)
  end

  test "should destroy breadtype" do
    assert_difference('Breadtype.count', -1) do
      delete breadtype_url(@breadtype)
    end

    assert_redirected_to breadtypes_url
  end
end
