class Mutations::CreateDevice < Mutations::BaseMutation
    argument :os, String, required: false 
    argument :version, String, required: true
  
    field :device, Types::DeviceType, null: false
    field :errors, [String], null: false
  
    def resolve(os:, version:)
      device = Device.new(os: os, version: version)
        if device.save
        {
             device: device,
             errors: []
        }
      else
        {
            device: nil,
          errors: device.errors.full_messages
        }
      end
    end
  end