# frozen_string_literal: true

Types::TorchType = GraphQL::ObjectType.define do
  name 'Torch'

  field :id, !types.ID
  field :name, !types.String
  field :description, !types.String
  field :flame_path, -> { Types::FlamePathType }, property: :flame_path
end
