# app/lib/custom_failure_app.rb
class CustomFailureApp < Devise::FailureApp
  def respond
    json_error_response
    # if request.env['REQUEST_PATH'].start_with?('/api/')
    # else
    #   super
    # end
  end

  def json_error_response
    self.status = 401
    self.content_type = 'application/json'
    self.response_body = { error: 'Unauthorized' }.to_json
  end
end
