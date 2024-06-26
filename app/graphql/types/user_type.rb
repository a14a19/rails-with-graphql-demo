# frozen_string_literal: true

module Types
  class UserType < Types::BaseObject
    field :id, ID, null: false
    field :email, String
    field :name, String
    field :password, String
    field :posts, [Types::PostType], null: true
    field :user_device_mappings, [Types::UserDeviceMappingType], null: true
    field :posts_count, Integer, null:true
    # field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def posts_count
      object.posts.size # count can work as well here, this is just ruby code
    end
  end
end
