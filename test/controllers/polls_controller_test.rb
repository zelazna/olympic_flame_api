require 'test_helper'

class PollsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index with the right response' do
    get polls_url
    assert_response :success
    assert_equal '{"FlamePath1":1,"FlamePath2":1}', @response.body
  end

  test 'should create a poll' do
    count = Poll.count
    post polls_url, params: {
      "email":"test@test.test",
      "flame_path_id": 1
    }, xhr: true
    assert_response :success
    assert_equal Poll.count, count+1
  end

  test 'should return a json with errors' do
    count = Poll.count
    post polls_url, params: {
      "email":"test",
      "flame_path_id": 1
    }, xhr: true
    assert_equal '{"email":["is invalid"]}', @response.body
  end
end
