require 'test_helper'

class BulletingBoardsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bulleting_board = bulleting_boards(:one)
  end

  test "should get index" do
    get bulleting_boards_url
    assert_response :success
  end

  test "should get new" do
    get new_bulleting_board_url
    assert_response :success
  end

  test "should create bulleting_board" do
    assert_difference('BulletingBoard.count') do
      post bulleting_boards_url, params: { bulleting_board: { description: @bulleting_board.description, name: @bulleting_board.name, picture: @bulleting_board.picture } }
    end

    assert_redirected_to bulleting_board_url(BulletingBoard.last)
  end

  test "should show bulleting_board" do
    get bulleting_board_url(@bulleting_board)
    assert_response :success
  end

  test "should get edit" do
    get edit_bulleting_board_url(@bulleting_board)
    assert_response :success
  end

  test "should update bulleting_board" do
    patch bulleting_board_url(@bulleting_board), params: { bulleting_board: { description: @bulleting_board.description, name: @bulleting_board.name, picture: @bulleting_board.picture } }
    assert_redirected_to bulleting_board_url(@bulleting_board)
  end

  test "should destroy bulleting_board" do
    assert_difference('BulletingBoard.count', -1) do
      delete bulleting_board_url(@bulleting_board)
    end

    assert_redirected_to bulleting_boards_url
  end
end
