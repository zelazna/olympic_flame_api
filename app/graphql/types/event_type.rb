# frozen_string_literal: true

Types::EventType = GraphQL::ObjectType.define do
  name 'Event'
  field :id, !types.ID
  field :date, -> { !Types::DateTimeType }
  field :title, !types.String
  field :location, !types.String
  field :description, !types.String
  field :images_url, !types[!types.String]
  field :flame_path, -> { Types::FlamePathType }, property: :flame_path
end
