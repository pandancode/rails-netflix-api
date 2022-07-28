class Api::V1::MoviesController < ActionController::API
  # ! Hash out the below if you don't want to authenticate
  # before_action :authenticate_user!, only: [ :index ]

  def index
    render json: Movie.all
    # if user_signed_in?
    # else
    #   render json: {}, status: 401
    # end
  end

end
