# frozen_string_literal: true

module Resolvers
  class CreateTorchVote < GraphQL::Function
    argument :torchId, types.ID

    type Types::TorchVoteType

    def call(_obj, args, ctx)
      Vote.create!(
        torch: Torch.find_by(id: args[:TorchId]),
        user: ctx[:current_user]
      )
    end
  end
end
