module Api
  module V1
        class ApplicationController < Api::ApplicationController
            before_action :configure_permitted_parameters, if: :devise_controller?

            protected

            def configure_permitted_parameters
                devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
                devise_parameter_sanitizer.permit(:account_update, keys: [:username])
            end
        end
    end
end
