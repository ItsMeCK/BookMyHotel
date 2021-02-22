require 'test_helper'

class XyzsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @xyz = xyzs(:one)
  end

  test "should get index" do
    get xyzs_url
    assert_response :success
  end

  test "should get new" do
    get new_xyz_url
    assert_response :success
  end

  test "should create xyz" do
    assert_difference('Xyz.count') do
      post xyzs_url, params: { xyz: { signature: @xyz.signature } }
    end

    assert_redirected_to xyz_url(Xyz.last)
  end

  test "should show xyz" do
    get xyz_url(@xyz)
    assert_response :success
  end

  test "should get edit" do
    get edit_xyz_url(@xyz)
    assert_response :success
  end

  test "should update xyz" do
    patch xyz_url(@xyz), params: { xyz: { signature: @xyz.signature } }
    assert_redirected_to xyz_url(@xyz)
  end

  test "should destroy xyz" do
    assert_difference('Xyz.count', -1) do
      delete xyz_url(@xyz)
    end

    assert_redirected_to xyzs_url
  end
end
