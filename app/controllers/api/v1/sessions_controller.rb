class Api::V1::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token
  # skip_before_action :verify_authenticity_token, only: [:create, :delete]

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    p resource
    p "Hello from sessions controller API"
    render json: { message: 'You are logged in.', user: current_user}, status: :ok
  end

  def respond_to_on_destroy
    log_out_success && return if current_user

    log_out_failure
  end

  def log_out_success
    render json: { message: "You are logged out." }, status: :ok
  end

  def log_out_failure
    render json: { message: "Hmm nothing happened."}, status: :unauthorized
  end
end
