# frozen_string_literal: true

module Types
  class PostInputType < Types::BaseInputObject
    description "Input type for Post"

    argument :title, String, required: true
    argument :body, String, required: true
    # field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end
