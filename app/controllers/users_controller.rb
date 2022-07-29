class UsersController < ApplicationController
  before_action :authorized, only: [:auto_login]

  # REGISTER
  def create
    @user = User.create(user_params)
    if @user.valid?
      token = encode_token({user_id: user.id})
      # token = encode_token({user_id: @user.id})
      render json: {user: @user, jwt: token}
    else
      render json: {errors: user.errors.full_messages}, status: :not_acceptable
    end
  end

  # LOGGING IN
  def login
    @user = User.find_by(username: params[:username])

    if @user && @user.authenticate(params[:password])
      token = encode_token({user_id: user.id})
      render json: {user: @user, jwt: token}, success: "Welcome back!"
    else
      render json: {error: "Invalid username or password"}
    end
  end


  def auto_login
    if session_user
      render json: @user
    else
      render json: {error: "No user logged in"}
    end
  end

  private

  def user_params
    params.permit(:username, :password, :age)
  end
end
