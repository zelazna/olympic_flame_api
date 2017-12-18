# frozen_string_literal: true

require 'test_helper'

class JsonWebTokenTest < ActiveSupport::TestCase
  test 'should encode and decode a jwt token' do
    token = JsonWebToken.encode(id: 1)
    result = JsonWebToken.decode(token)
    assert_not_nil result.first.delete('exp')
    assert result == [{ 'id' => 1 }, { 'alg' => 'HS256' }]
  end

  test 'should return a user' do
    token = JsonWebToken.encode(id: 1)
    result = JsonWebToken.verify(token)
    assert_instance_of(User, result)
  end

  test 'should return nil if wrong token' do
    assert_nil JsonWebToken.verify('token')
  end

  test 'should return nil on expired token' do
    class JsonWebTokenTest < JsonWebToken
      def self.encode(payload)
        payload.reverse_merge!(exp: 1.day.ago)
        JWT.encode(payload, Rails.application.secrets.secret_key_base)
      end
    end

    token = JsonWebTokenTest.encode(id: 1)
    assert_nil JsonWebToken.verify(token)
  end
end
