class Users::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token, only: [:create, :delete]

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    render json: { message: 'You are logged in.', user: current_user, token: current_token}, status: :ok
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

  private

  def current_token
    request.env['warden-jwt_auth.token']
  end
end
