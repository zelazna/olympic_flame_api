# frozen_string_literal: true

Types::TorchType = GraphQL::ObjectType.define do
  name 'Torch'

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  field :flame_path, -> { !Types::FlamePathType }
  field :torch_votes, -> { types[Types::TorchVoteType] }
  field :image_url, !types.String
end
