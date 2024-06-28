class Mutations::CreateUser < Mutations::BaseMutation
    argument :name, String, required: true
    argument :email, String, required: false 
    argument :password, String, required: true
    argument :posts, [Types::PostInputType], required: false
  
    field :user, Types::UserType, null: false
    field :errors, [String], null: false
  
    def resolve(name:, email:, password:, posts: [])
      user = User.new(name: name, email: email, password: password)

      posts.each do |post_attributes|
        user.posts.build(post_attributes.to_h)
      end

        if user.save
        {
             user: user,
             errors: []
        }
      else
        {
            user: nil,
          errors: user.errors.full_messages
        }
      end
    end
  end