class MembersController < ApplicationController
  # ! Amin, the below explicitly (and for only, ONLY) disables the CSRF token. To be discussed and
  # ! reviewed as per second answer from the below
  # ! https://stackoverflow.com/questions/35181340/rails-cant-verify-csrf-token-authenticity-when-making-a-post-request
  # skip_before_action :verify_authenticity_token, only: [:show]

  before_action :authenticate_user!

  def show
    user = get_user_from_token
    render json: { message: "If you see this, you're in!", user: user }
  end

  private

  def get_user_from_token
    jwt_payload = JWT.decode(request.headers["Authorization"].split(" ")[1],
                              ENV['DEVISE_JWT_SECRET_KEY']).first
    user_id = jwt_payload["sub"]
    user = User.find(user_id.to_s)
  end
end
