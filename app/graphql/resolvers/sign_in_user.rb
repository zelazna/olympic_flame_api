# frozen_string_literal: true

module Resolvers
  class SignInUser < GraphQL::Function
    # define the arguments this field will receive
    argument :email, !Types::AuthProviderEmailInput

    # defines inline return type for the mutation
    type do
      name 'SigninPayload'

      field :token, types.String
      field :user, Types::UserType
    end

    # resolve the field's response
    def call(_obj, args, _ctx)
      input = args[:email]
      return unless input

      user = User.find_by(email: input[:email])
      return unless user
      return unless user.authenticate(input[:password])
      token = JsonWebToken.encode(id: user.id)

      OpenStruct.new(
        token: token,
        user: user
      )
    end
  end
end
