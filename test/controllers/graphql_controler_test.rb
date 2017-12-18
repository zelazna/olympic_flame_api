# frozen_string_literal: true

require 'test_helper'

class GraphqlControllerTest < ActionController::TestCase
  setup do
  end

  test 'should execute the graphql query' do
    post :execute, params: { query: '{ __schema }' }, format: :json

    assert_response :success
  end
end
