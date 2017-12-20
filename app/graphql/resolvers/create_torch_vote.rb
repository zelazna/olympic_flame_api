# frozen_string_literal: true

module Resolvers
  class CreateTorchVote < GraphQL::Function
    argument :torchId, types.ID

    type Types::TorchVoteType

    def call(_obj, args, ctx)
      if ctx[:current_user].blank?
        raise GraphQL::ExecutionError, 'Authentication required'
      end

      TorchVote.create!(
        torch: Torch.find_by(id: args[:torchId]),
        user: ctx[:current_user]
      )
    end
  end
end
