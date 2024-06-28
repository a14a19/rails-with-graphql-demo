module Types
  class DeviceType < Types::BaseObject
    field :id, ID, null: false # can be Integer as well
    field :version, String
    field :os, String
    field :users, [Types::UserType], null: true
    # field :users, [Types::UserType], null: true

    # field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :updated_at, GraphQL::Types::ISO8601DateTime, null: false

    def users
      object.users
    end
  end
end