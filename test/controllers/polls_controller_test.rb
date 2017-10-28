# frozen_string_literal: true

require 'test_helper'

class PollsControllerTest < ActionDispatch::IntegrationTest
  test 'should get index with the right response' do
    get polls_url
    assert_response :success
    assert_equal(
      { 'FlamePath1' => 1, 'FlamePath2' => 1 },
      JSON.parse(@response.body)
    )
  end

  test 'should create a poll' do
    count = Poll.count
    post polls_url, params: {
      'email': 'test@test.test',
      'flame_path_id': 1
    }, xhr: true
    assert_response :success
    assert_equal(Poll.count, count + 1)
  end

  test 'should return a json with errors' do
    post polls_url, params: {
      'email': 'test',
      'flame_path_id': 1
    }, xhr: true
    assert_equal(
      {'email' => ['is invalid']}, 
      JSON.parse(@response.body)
    )
  end
end
