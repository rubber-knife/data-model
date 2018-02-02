require 'test_helper'

class MetaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @metum = meta(:one)
  end

  test "should get index" do
    get meta_url, as: :json
    assert_response :success
  end

  test "should create metum" do
    assert_difference('Metum.count') do
      post meta_url, params: { metum: { evaluation: @metum.evaluation, last_edited: @metum.last_edited, read: @metum.read, submission_id: @metum.submission_id, user_id: @metum.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show metum" do
    get metum_url(@metum), as: :json
    assert_response :success
  end

  test "should update metum" do
    patch metum_url(@metum), params: { metum: { evaluation: @metum.evaluation, last_edited: @metum.last_edited, read: @metum.read, submission_id: @metum.submission_id, user_id: @metum.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy metum" do
    assert_difference('Metum.count', -1) do
      delete metum_url(@metum), as: :json
    end

    assert_response 204
  end
end
