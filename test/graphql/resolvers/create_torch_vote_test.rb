# frozen_string_literal: true

require 'test_helper'

module Resolvers
  class CreateTorchVoteTest < ActiveSupport::TestCase
    def perform(args, ctx)
      Resolvers::CreateTorchVote.new.call(nil, args, ctx)
    end

    setup do
      @user = User.create! email: 'test@email.com', password: 'test'
    end

    test 'creating new torch vote' do
      vote = perform({ torchId: 1 }, current_user: @user)

      assert vote.persisted?
    end

    test 'must raise an exception if context doesnt hold user' do
      assert_raise GraphQL::ExecutionError do
        perform({ torchId: 1 }, current_user: nil)
      end
    end
  end
end
