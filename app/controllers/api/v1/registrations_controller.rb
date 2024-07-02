# app/controllers/api/v1/registrations_controller.rb
module Api
  module V1
    class RegistrationsController < Devise::RegistrationsController
      respond_to :json

      private

      def respond_with(resource, _opts = {})
        if resource.persisted?
          render json: { message: 'Signed up successfully.', user: resource }, status: :ok
        else
          render json: { message: 'User could not be created.', errors: resource.errors.full_messages }, status: :unprocessable_entity
        end
      end
    end
  end
end
