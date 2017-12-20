# frozen_string_literal: true

require 'test_helper'

module Resolvers
  class CreateTorchVoteTest < ActiveSupport::TestCase
    def perform(args = { torchId: 1 }, ctx = { current_user: @user })
      Resolvers::CreateTorchVote.new.call(nil, args, ctx)
    end

    setup do
      @user = User.create! email: 'test@email.com', password: 'test'
    end

    test 'creating new torch vote' do
      vote = perform

      assert vote.persisted?
    end
  end
end
