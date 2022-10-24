require "test_helper"

class HalloweenMoviesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get halloween_movies_index_url
    assert_response :success
  end

  test "should get show" do
    get halloween_movies_show_url
    assert_response :success
  end

  test "should get alphabetical" do
    get halloween_movies_alphabetical_url
    assert_response :success
  end
end
