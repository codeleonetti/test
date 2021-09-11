require "test_helper"

class EncodingtestsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @encodingtest = encodingtests(:one)
  end

  test "should get index" do
    get encodingtests_url
    assert_response :success
  end

  test "should get new" do
    get new_encodingtest_url
    assert_response :success
  end

  test "should create encodingtest" do
    assert_difference('Encodingtest.count') do
      post encodingtests_url, params: { encodingtest: {  } }
    end

    assert_redirected_to encodingtest_url(Encodingtest.last)
  end

  test "should show encodingtest" do
    get encodingtest_url(@encodingtest)
    assert_response :success
  end

  test "should get edit" do
    get edit_encodingtest_url(@encodingtest)
    assert_response :success
  end

  test "should update encodingtest" do
    patch encodingtest_url(@encodingtest), params: { encodingtest: {  } }
    assert_redirected_to encodingtest_url(@encodingtest)
  end

  test "should destroy encodingtest" do
    assert_difference('Encodingtest.count', -1) do
      delete encodingtest_url(@encodingtest)
    end

    assert_redirected_to encodingtests_url
  end
end
