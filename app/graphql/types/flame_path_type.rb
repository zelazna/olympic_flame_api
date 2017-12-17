# frozen_string_literal: true

Types::FlamePathType = GraphQL::ObjectType.define do
  name 'FlamePath'

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  field :torch, -> { Types::TorchType }, property: :torch
end
