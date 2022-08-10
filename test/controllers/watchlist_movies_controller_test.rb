require "test_helper"

class WatchlistMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get watchlist_movies_create_url
    assert_response :success
  end

  test "should get update" do
    get watchlist_movies_update_url
    assert_response :success
  end

  test "should get delete" do
    get watchlist_movies_delete_url
    assert_response :success
  end
end
