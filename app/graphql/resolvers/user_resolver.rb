module Resolvers
    class UserResolver
      def self.all_users
        User.all
      end
  
      def self.find_user(id:)
        User.find(id)
      end
    end
  end