require 'test_helper'

class BulletinBoards1sControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulletin_boards1 = bulletin_boards1s(:one)
  end

  test "should get index" do
    get bulletin_boards1s_url
    assert_response :success
  end

  test "should get new" do
    get new_bulletin_boards1_url
    assert_response :success
  end

  test "should create bulletin_boards1" do
    assert_difference('BulletinBoards1.count') do
      post bulletin_boards1s_url, params: { bulletin_boards1: { description: @bulletin_boards1.description, name: @bulletin_boards1.name, picture: @bulletin_boards1.picture } }
    end

    assert_redirected_to bulletin_boards1_url(BulletinBoards1.last)
  end

  test "should show bulletin_boards1" do
    get bulletin_boards1_url(@bulletin_boards1)
    assert_response :success
  end

  test "should get edit" do
    get edit_bulletin_boards1_url(@bulletin_boards1)
    assert_response :success
  end

  test "should update bulletin_boards1" do
    patch bulletin_boards1_url(@bulletin_boards1), params: { bulletin_boards1: { description: @bulletin_boards1.description, name: @bulletin_boards1.name, picture: @bulletin_boards1.picture } }
    assert_redirected_to bulletin_boards1_url(@bulletin_boards1)
  end

  test "should destroy bulletin_boards1" do
    assert_difference('BulletinBoards1.count', -1) do
      delete bulletin_boards1_url(@bulletin_boards1)
    end

    assert_redirected_to bulletin_boards1s_url
  end
end
