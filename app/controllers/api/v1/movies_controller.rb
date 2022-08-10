class Api::V1::MoviesController < ActionController::API
  # ! Hash out the below if you don't want to authenticate
  before_action :authenticate_user!, only: [ :index ]

  def index
    # p request.headers["Authorization"].split(" ")[1]
    render json: Movie.all
  end

end
