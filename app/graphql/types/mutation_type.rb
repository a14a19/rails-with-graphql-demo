# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    # user
    field :create_user, mutation: Mutations::CreateUser
    field :edit_user, mutation: Mutations::EditUser
    field :delete_user, mutation: Mutations::DeleteUser

    # post
    field :create_post, mutation: Mutations::CreatePost

    # device
  end
end

# # TODO: remove me
# field :test_field, String, null: false,
#   description: "An example field added by the generator"
# def test_field
#   "Hello World"
# end