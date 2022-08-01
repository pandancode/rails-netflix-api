class MembersController < ApplicationController
  # ! Amin, the below explicitly (and for only, ONLY) disables the CSRF token. To be discussed and
  # ! reviewed as per second answer from the below
  # ! https://stackoverflow.com/questions/35181340/rails-cant-verify-csrf-token-authenticity-when-making-a-post-request
  # skip_before_action :verify_authenticity_token, only: [:show]

  # before_action :authenticate_user!

  def show
    render json: { message: "If you see this, you're in!" }
  end
end
