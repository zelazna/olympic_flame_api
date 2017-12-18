Types::PointType = GraphQL::ObjectType.define do
  name 'Point'
  field :id, !types.ID
  field :lat, !types.Float
  field :long, !types.Float
  field :flame_path, -> { Types::FlamePathType }, property: :flame_path
end
