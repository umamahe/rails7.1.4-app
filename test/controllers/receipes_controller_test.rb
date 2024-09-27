require "test_helper"

class ReceipesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @receipe = receipes(:one)
  end

  test "should get index" do
    get receipes_url
    assert_response :success
  end

  test "should get new" do
    get new_receipe_url
    assert_response :success
  end

  test "should create receipe" do
    assert_difference("Receipe.count") do
      post receipes_url, params: { receipe: { body: @receipe.body, title: @receipe.title } }
    end

    assert_redirected_to receipe_url(Receipe.last)
  end

  test "should show receipe" do
    get receipe_url(@receipe)
    assert_response :success
  end

  test "should get edit" do
    get edit_receipe_url(@receipe)
    assert_response :success
  end

  test "should update receipe" do
    patch receipe_url(@receipe), params: { receipe: { body: @receipe.body, title: @receipe.title } }
    assert_redirected_to receipe_url(@receipe)
  end

  test "should destroy receipe" do
    assert_difference("Receipe.count", -1) do
      delete receipe_url(@receipe)
    end

    assert_redirected_to receipes_url
  end
end
