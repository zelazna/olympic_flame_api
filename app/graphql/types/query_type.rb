Types::QueryType = GraphQL::ObjectType.define do
  name "Query"
  # Add root-level fields here.
  # They will be entry points for queries on your schema.

  field :allFlamePath, !types[Types::FlamePathType] do
    resolve -> (obj, args, ctx) { FlamePath.all }
  end

  # field :allTorchs, !types[Types::TorchType] do
  #   resolve -> (obj, args, ctx) { Torch.all }
  # end
end
