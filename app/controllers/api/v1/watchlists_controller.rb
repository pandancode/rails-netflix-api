class Api::V1::WatchlistsController < ActionController::API
  before_action :authenticate_user!
  # ! WHENEVER SOMETHING HAPPEN HERE, WE ALREADY KNOW THE USER + MOVIE.
  # ! WE'RE JUST MISSING THE NAME OF THE WATCHLIST
  # ! WE OPEN A FORM WHEN CLICKING ON CLOCK ICON + GATHER INFORMATION (NEW OR EXISTING LIST)

  def index
    watchlists_movies = []

    current_user.watchlists.each do |wl|
      wl_name = wl.name
      wl_movies = transform_collection_onto_hash(wl.movies)
      p wl_movies

      watchlists_movies.push({name: wl_name, movies: wl_movies})
    end

    render json: { message: "Here's the different watchlists for the user #{current_user.email}", watchlists: watchlists_movies.to_json }, status: :ok
  end

  def create
  end

  def update
  end

  def delete
  end

  private

  def transform_collection_onto_hash(collection) # ? Starts with "#<Movie ... >"
    array_containing_hashes = []

    collection.each do |instance|
      array_containing_hashes.push({
        id: instance.id,
        adult: instance.adult,
        backdrop_path: instance.backdrop_path,
        genre_ids: instance.genre_ids,
        original_language: instance.original_language,
        original_title: instance.original_title,
        synopsis: instance.synopsis,
        popularity: instance.popularity,
        poster_path: instance.poster_path,
        release_date: instance.release_date,
        title: instance.title,
        video: instance.video,
        vote_average: instance.vote_average,
        vote_count: instance.vote_count,
        created_at: instance.created_at,
        updated_at: instance.updated_at
      })
    end

    array_containing_hashes
  end

end
