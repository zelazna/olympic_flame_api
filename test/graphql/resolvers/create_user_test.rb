# frozen_string_literal: true

require 'test_helper'

module Resolvers
  class CreateUserTest < ActiveSupport::TestCase
    def perform(args = {})
      Resolvers::CreateUser.new.call(nil, args, nil)
    end

    test 'creating new user' do
      user = perform(
        authProvider: {
          email: {
            email: 'email@example.com',
            password: '[omitted]'
          }
        }
      )

      assert user.persisted?
      assert_equal user.email, 'email@example.com'
    end
  end
end
