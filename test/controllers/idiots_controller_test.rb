require "test_helper"

class IdiotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @idiot = idiots(:one)
  end

  test "should get index" do
    get idiots_url
    assert_response :success
  end

  test "should get new" do
    get new_idiot_url
    assert_response :success
  end

  test "should create idiot" do
    assert_difference("Idiot.count") do
      post idiots_url, params: { idiot: { name: @idiot.name } }
    end

    assert_redirected_to idiot_url(Idiot.last)
  end

  test "should show idiot" do
    get idiot_url(@idiot)
    assert_response :success
  end

  test "should get edit" do
    get edit_idiot_url(@idiot)
    assert_response :success
  end

  test "should update idiot" do
    patch idiot_url(@idiot), params: { idiot: { name: @idiot.name } }
    assert_redirected_to idiot_url(@idiot)
  end

  test "should destroy idiot" do
    assert_difference("Idiot.count", -1) do
      delete idiot_url(@idiot)
    end

    assert_redirected_to idiots_url
  end
end
