# frozen_string_literal: true

module Resolvers
  class CreateTorchVote < GraphQL::Function
    argument :torchId, types.ID

    type Types::TorchVoteType

    def call(_obj, args, ctx)
      raise GraphQL::ExecutionError, 'Authentication required' if ctx[:current_user].blank?

      TorchVote.create!(
        torch: Torch.find_by(id: args[:torchId]),
        user: ctx[:current_user]
      )
    end
  end
end
