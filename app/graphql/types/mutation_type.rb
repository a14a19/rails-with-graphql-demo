# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # user
    field :createUser, mutation: Mutations::CreateUser
    field :edit_user, mutation: Mutations::EditUser
    field :deleteUser, mutation: Mutations::DeleteUser

    # post
    field :create_post, mutation: Mutations::CreatePost

    # device 
    field :create_device, mutation: Mutations::CreateDevice

    #user_device_mapping
    field :create_user_device_mapping, mutation: Mutations::CreateUserDeviceMapping
  end
end

# # TODO: remove me
# field :test_field, String, null: false,
#   description: "An example field added by the generator"
# def test_field
#   "Hello World"
# end