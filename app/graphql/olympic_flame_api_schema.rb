# frozen_string_literal: true

OlympicFlameApiSchema = GraphQL::Schema.define do
  mutation(Types::MutationType)
  query(Types::QueryType)
end
