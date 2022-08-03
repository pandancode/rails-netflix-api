class Users::RegistrationsController < Devise::RegistrationsController
  # ! Amin, the below explicitly (and for only, ONLY) disables the CSRF token for the post / create user method. To be discussed and
  # ! reviewed as per second answer from the below
  # ! https://stackoverflow.com/questions/35181340/rails-cant-verify-csrf-token-authenticity-when-making-a-post-request
  skip_before_action :verify_authenticity_token, only: [:create]

  respond_to :json

  private

  def respond_with(resource, _opts = {})
    register_success && return if resource.persisted?

    register_failed
  end

  def register_success
    render json: { message: 'Signed up sucessfully.' }
  end

  def register_failed
    render json: { message: "Something went wrong while signing up." }
  end
end
