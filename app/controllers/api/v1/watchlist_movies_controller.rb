class Api::V1::WatchlistMoviesController < ActionController::API
  before_action :authenticate_user!, except: [ :index ]

  def create
  end

  def update
  end

  def delete
  end
end
