# frozen_string_literal: true

Types::QueryType = GraphQL::ObjectType.define do
  name 'Query'
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allFlamePath, !types[Types::FlamePathType] do
    resolve ->(_obj, _args, _ctx) { FlamePath.all }
  end

  field :FlamePath, !Types::FlamePathType do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { FlamePath.find_by(id: args[:id]) }
  end

  field :Torchs, !types[Types::TorchType] do
    resolve ->(_obj, _args, _ctx) { Torch.all }
  end

  field :Torch, !Types::TorchType do
    argument :id, !types.ID
    resolve ->(_obj, args, _ctx) { Torch.find_by(id: args[:id]) }
  end
end
