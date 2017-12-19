# frozen_string_literal: true

require 'test_helper'

class GraphqlControllerTest < ActionDispatch::IntegrationTest
  setup do
    @user = User.first
    @token = JsonWebToken.encode(id: @user.id)
  end

  test 'should execute the graphql query' do
    post graphql_url, params: { query: '{ __schema }' }, as: :json

    assert_response :success
  end

  test 'should store a user in context' do
    post graphql_url, params: { query: '{ __schema }' }, headers: { 'Authorization': "Bearer #{@token}" }, as: :json
  end

  test 'should raise an error on Unexpected parameters' do
    assert_raise ArgumentError do
      post graphql_url, params: { variables: 123 }, as: :text
    end
  end

  test 'should return a empty hash' do
    post graphql_url, params: { variables: { 'test': 'retest' } }
  end
end
