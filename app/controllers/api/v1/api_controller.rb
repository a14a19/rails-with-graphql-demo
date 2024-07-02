class ApiController < ActionController::API
  # Skip CSRF for API controllers
  skip_before_action :verify_authenticity_token

  # Configure devise to not use session storage
  include DeviseTokenAuth::Concerns::SetUserByToken
end
