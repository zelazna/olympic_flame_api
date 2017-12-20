# frozen_string_literal: true

Types::TorchVoteType = GraphQL::ObjectType.define do
  name 'TorchVote'

  field :id, types.ID
  field :user, -> { Types::UserType }
  field :torch, -> { Types::TorchType }
end
