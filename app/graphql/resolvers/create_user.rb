# frozen_string_literal: true

module Resolvers
  class CreateUser < GraphQL::Function
    AuthProviderInput = GraphQL::InputObjectType.define do
      name 'AuthProviderSignupData'

      argument :email, Types::AuthProviderEmailInput
    end

    argument :authProvider, !AuthProviderInput

    type Types::UserType

    def call(_obj, args, _ctx)
      User.create!(
        email: args[:authProvider][:email][:email],
        password: args[:authProvider][:email][:password],
        fb_id: args[:authProvider][:email][:fb_id]
      )
    end
  end
end
