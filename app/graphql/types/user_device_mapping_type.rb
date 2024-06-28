module Types
  class UserDeviceMappingType < Types::BaseObject
    field :id, ID, null: false # can be Integer as well
    # field :user_id, ID
    # field :device_id, ID

    field :user, Types::UserType, null: false
    field :device, Types::DeviceType, null: false

    # field :created_at, GraphQL::Types::ISO8601DateTime, null: false
    # field :updated_at, GraphQL::Types::ISO8601DateTime, null: false
  end
end