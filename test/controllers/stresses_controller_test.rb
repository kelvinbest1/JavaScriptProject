require "test_helper"

class StressesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stress = stresses(:one)
  end

  test "should get index" do
    get stresses_url, as: :json
    assert_response :success
  end

  test "should create stress" do
    assert_difference('Stress.count') do
      post stresses_url, params: { stress: { boolean: @stress.boolean, name: @stress.name, user_id: @stress.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show stress" do
    get stress_url(@stress), as: :json
    assert_response :success
  end

  test "should update stress" do
    patch stress_url(@stress), params: { stress: { boolean: @stress.boolean, name: @stress.name, user_id: @stress.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy stress" do
    assert_difference('Stress.count', -1) do
      delete stress_url(@stress), as: :json
    end

    assert_response 204
  end
end
