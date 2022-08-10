class Api::V1::FavoritesController < ActionController::API
  require 'json'
  before_action :authenticate_user!

  def index
    favorite_list = current_user.movies
    render json: { favorite_movies: favorite_list, status: :ok }
  end


  def create
    res_body = JSON.parse(request.raw_post)
    new_favorite = Favorite.new(user_id: current_user.id, movie_id: res_body["movie_id"])

    if new_favorite.save!
      favorite_list = current_user.movies
      render json: { message: "Added the movie with id #{res_body["movie_id"]} as favorite for user #{current_user.email}", favorite_movies: favorite_list.to_json }, status: :ok
    else
      render json: { message: "An error occured while adding movie #{res_body["movie_id"]} for user  #{current_user.email}", favorite_movies: favorite_list.to_json }, status: :unprocessable_entity
    end
  end


  def destroy
    movie_to_delete = Favorite.where(user_id: current_user.id).where(movie_id: params["id"])[0]
    movie_to_delete.delete
    favorite_list = current_user.movies
    render json: { message: "Movie with id #{params["id"]} deleted from favorite successfully for user #{current_user.email}", favorite_movies: favorite_list.to_json }, status: :ok
  end
end
