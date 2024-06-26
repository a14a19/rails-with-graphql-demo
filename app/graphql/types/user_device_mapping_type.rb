module Types
  class UserDeviceMappingType < Types::BaseObject
    field :id, ID, null: false # can be Integer as well
    field :user_id, ID
    field :device_id, ID

    field :devices, [Types::DeviceType], null: true
    field :users, [Types::UserType], null: true

    # field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end