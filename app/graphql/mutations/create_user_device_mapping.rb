class Mutations::CreateUserDeviceMapping < Mutations::BaseMutation
    argument :user_id, ID, required: true
    argument :device_id, ID, required: true
  
    field :user_device_mapping, Types::UserDeviceMappingType, null: false
    field :errors, [String], null: false
  
    def resolve(user_id:, device_id:)
      user_device_mapping = UserDeviceMapping.new(user_id: user_id, device_id: device_id)
        if user_device_mapping.save
        {
             user_device_mapping: user_device_mapping,
             errors: []
        }
      else
        {
            user_device_mapping: nil,
          errors: user_device_mapping.errors.full_messages
        }
      end
    end
  end