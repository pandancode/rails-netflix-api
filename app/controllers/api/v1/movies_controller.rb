class Api::V1::MoviesController < ActionController::API
  # ! Hash out the below if you don't want to authenticate
  before_action :authenticate_user!, only: [ :index ]

  def index
    if user_signed_in?
      render json: Movie.all
    else
      render json: {}, status: 401
    end
  end

end
