require 'test_helper'

class AssistancesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @assistance = assistances(:one)
  end

  test "should get index" do
    get assistances_url, as: :json
    assert_response :success
  end

  test "should create assistance" do
    assert_difference('Assistance.count') do
      post assistances_url, params: { assistance: { code: @assistance.code, type_id: @assistance.type_id, user_id: @assistance.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show assistance" do
    get assistance_url(@assistance), as: :json
    assert_response :success
  end

  test "should update assistance" do
    patch assistance_url(@assistance), params: { assistance: { code: @assistance.code, type_id: @assistance.type_id, user_id: @assistance.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy assistance" do
    assert_difference('Assistance.count', -1) do
      delete assistance_url(@assistance), as: :json
    end

    assert_response 204
  end
end
