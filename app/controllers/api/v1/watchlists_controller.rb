class Api::V1::WatchlistsController < ActionController::API
  before_action :authenticate_user!
  # ! WHENEVER SOMETHING HAPPEN HERE, WE ALREADY KNOW THE USER + MOVIE.
  # ! WE'RE JUST MISSING THE NAME OF THE WATCHLIST
  # ! WE OPEN A FORM WHEN CLICKING ON CLOCK ICON + GATHER INFORMATION (NEW OR EXISTING LIST)

  def index
    watchlists_movies = get_watchlist_array_with_name_and_movies

    render json: { message: "Here's the different watchlists for the user #{current_user.email}", watchlists: watchlists_movies.to_json }, status: :ok
  end

  def create
    wl_name = params["name"]
    movie_id = params["movie_id"]
    movie = Movie.find(movie_id)

    # ! We check if we already have a watchlist with the name coming from client through params
    watchlist = Watchlist.where(user_id: current_user.id).where(name: wl_name)

    if watchlist.empty?
      # ! If there's no watchlist already existing for this user with this name, we create it
      Watchlist.create(user_id: current_user.id, name: wl_name)
      newly_created_watchlist_id = current_user.watchlists.last.id
      WatchlistMovie.create(watchlist_id: newly_created_watchlist_id, movie_id: movie_id)
    else
      # ! otherwise we just create a new entry for this watchlist if it doesn't already exists
      already_has_movie = watchlist[0].movies.any? { |movie| movie.id === movie_id }
      if already_has_movie === false
        WatchlistMovie.create(watchlist_id: watchlist[0].id, movie_id: movie_id)
      end
    end

    watchlists_movies = get_watchlist_array_with_name_and_movies

    render json: { message: "Here's the updated watchlists for the user #{current_user.email}", watchlists: watchlists_movies.to_json }, status: :ok
  end

  def update
  end

  def delete
    wl_name = params["name"]
    movie_id = params["movie_id"]

    watchlist = Watchlist.where(user_id: current_user.id).where(name: wl_name)[0]
    instance_to_delete = WatchlistMovie.where(watchlist_id: watchlist.id).where(movie_id: movie_id)
    instance_to_delete.delete

    updated_watchlist = Watchlist.find(watchlist.id)

    if updated_watchlist.empty?
      updated_watchlist.delete
      watchlist_movies = get_watchlist_array_with_name_and_movies
      render json: { message: "The last entry for this watchlist has been deleted. Therefore the watchlist has completly been removed. ", watchlists: watchlists_movies.to_json }, status: :ok
    else
      watchlist_movies = get_watchlist_array_with_name_and_movies
      render json: { message: "Here's the updated watchlists for the user #{current_user.email}", watchlists: watchlists_movies.to_json }, status: :ok
    end
  end

  private

  # def watchlist_params
  #    params.require(:watchlists).permit(:id, :name, :user_id)
  # end

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

  def get_watchlist_array_with_name_and_movies
    watchlists_movies = []

    current_user.watchlists.each do |wl|
      wl_name = wl.name
      wl_movies = transform_collection_onto_hash(wl.movies)

      watchlists_movies.push({id: wl.id, name: wl_name, movies: wl_movies})
    end

    watchlists_movies
  end
end
