class Api::V1::MoviesController < ActionController::API
  # ! Hash out the below if you don't want to authenticate
  before_action :authenticate_user!, only: [ :index ]
  # before_action :verify_authenticity_token, only: [ :index ]

  def index
<<<<<<< HEAD
    # p request.headers["Authorization"].split(" ")[1]
    render json: Movie.all
=======
    render json: Movie.all.order(id: :asc)
    # if user_signed_in?
    # else
    #   render json: {}, status: 401
    # end
>>>>>>> main
  end

end
