class Api::V1::WatchlistsController < ActionController::API
  before_action :authenticate_user!, except: [ :index ]
  # ! WHENEVER SOMETHING HAPPEN HERE, WE ALREADY KNOW THE USER + MOVIE.
  # ! WE'RE JUST MISSING THE NAME OF THE WATCHLIST
  # ! WE OPEN A FORM WHEN CLICKING ON CLOCK ICON + GATHER INFORMATION (NEW OR EXISTING LIST)

  def index
  end

  def create
  end

  def update
  end

  def delete
  end
end
