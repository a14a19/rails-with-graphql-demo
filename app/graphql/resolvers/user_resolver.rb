module Resolvers
    class UserResolver
      def self.all_users
        # puts "Hello Galaxy! #{Rails.application.credentials.devise[:jwt_secret_key]}"
        User.all
      end
  
      def self.find_user(id:)
        User.find(id)
      end
    end
  end