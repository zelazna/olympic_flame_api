# frozen_string_literal: true

require 'test_helper'

class VotesControllerTest < ActionDispatch::IntegrationTest
  def authenticated_header
    token = Knock::AuthToken.new(payload: { sub: users(:one).id }).token

    {
      'Authorization': "Bearer #{token}"
    }
  end

  # test 'should get index with the right response' do
  #   get votes_url, headers: authenticated_header
  #   assert_response :success
  #   assert_equal(
  #     { 'FlamePath1' => 1, 'FlamePath2' => 1 },
  #     JSON.parse(@response.body)
  #   )
  # end
end
