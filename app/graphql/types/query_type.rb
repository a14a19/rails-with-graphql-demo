# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    # /users
    # graphql query
    field :users, [Types::UserType], null: false, description: "Fetch all users"
    # ruby query
    def users
      Resolvers::UserResolver.all_users
      # User.all # coming from models > User, these are active records of ruby on rails, coming from a gem, it replaces database queries like select * from user;
    end

    # graphql query
    field :user, Types::UserType, null: false do
      argument :id, ID, required: true
    end 
    # ruby query
    def user(id:)
      User.find(id)
    end

    # /posts
    # graphql query
    field :posts, [Types::PostType], null: false 
    # ruby query
    def posts
      Post.all # coming from models > Post
    end

    # graphql query
    field :post, Types::PostType, null: false do
      argument :id, ID, required: true
    end 
    # ruby query
    def post(id:)
      Post.find(id)
    end

    # for devices

    # field :node, Types::NodeType, null: true, description: "Fetches an object given its ID." do
    #   argument :id, ID, required: true, description: "ID of the object."
    # end

    # def node(id:)
    #   context.schema.object_from_id(id, context)
    # end

    # field :nodes, [Types::NodeType, null: true], null: true, description: "Fetches a list of objects given a list of IDs." do
    #   argument :ids, [ID], required: true, description: "IDs of the objects."
    # end

    # def nodes(ids:)
    #   ids.map { |id| context.schema.object_from_id(id, context) }
    # end

    # # Add root-level fields here.
    # # They will be entry points for queries on your schema.

    # # TODO: remove me
    # field :test_field, String, null: false,
    #   description: "An example field added by the generator"
    # def test_field
    #   "Hello World!"
    # end
  end
end
