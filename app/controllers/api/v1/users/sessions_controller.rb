# app/controllers/api/v1/users/sessions_controller.rb
module Api
  module V1
    module Users
      class SessionsController < Devise::SessionsController
        respond_to :json

        private

        def respond_with(resource, _opts = {})
          render json: { message: 'Logged in successfully.', user: resource }, status: :ok
        end

        def respond_to_on_destroy
          if current_user
            render json: { message: 'Logged out successfully.' }, status: :ok
          else
            render json: { message: 'User not logged in.' }, status: :unauthorized
          end
        end
      end
    end
  end
end
