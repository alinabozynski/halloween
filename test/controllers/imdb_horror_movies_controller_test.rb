require "test_helper"

class ImdbHorrorMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get imdb_horror_movies_index_url
    assert_response :success
  end

  test "should get show" do
    get imdb_horror_movies_show_url
    assert_response :success
  end

  test "should get ratings" do
    get imdb_horror_movies_ratings_url
    assert_response :success
  end
end
