class API::V1::ReviewsController < ActionController::API
  before_action :authenticate_user!
  def index
    reviews = Review.where(watchlist_id: params["watchlist_id"])

    render json: {message: "Here's the list of all the reviews for the watchlist with id #{params["watchlist_id"]}", reviews: reviews }, status: :ok
  end

  def create
    review = Review.new(user_id: current_user.id, watchlist_id: params["watchlist_id"])

    if review.save
      render json: { message: "Your review have been added successfully for the watchlist with id #{params["watchlist_id"]}", review: Review.last}, status: :ok
    else
      render json: { message: "An error occured while adding your review to the watchlist with id #{params["watchlist_id"]}"}, status: :unprocessable_entity
    end
  end

  def update
    review = Review.find(params["review_id"])
    # ! review.update()
  end

  def delete
    review = Review.find(params["review_id"])

    if review.delete
      render json: { message: "Your review have been deleted successfully for the watchlist with id #{params["watchlist_id"]}"}, status: :ok
    else
      render json: { message: "An error occured while deleting your review from the watchlist with id #{params["watchlist_id"]}"}, status: :error
    end
  end
end
