require "test_helper"

class CandiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get candies_index_url
    assert_response :success
  end

  test "should get show" do
    get candies_show_url
    assert_response :success
  end

  test "should get chocolate" do
    get candies_chocolate_url
    assert_response :success
  end

  test "should get fruity" do
    get candies_fruity_url
    assert_response :success
  end

  test "should get caramel" do
    get candies_caramel_url
    assert_response :success
  end

  test "should get peanuty_almondy" do
    get candies_peanuty_almondy_url
    assert_response :success
  end

  test "should get nougat" do
    get candies_nougat_url
    assert_response :success
  end

  test "should get crisped_rice_wafer" do
    get candies_crisped_rice_wafer_url
    assert_response :success
  end

  test "should get hard" do
    get candies_hard_url
    assert_response :success
  end

  test "should get bar" do
    get candies_bar_url
    assert_response :success
  end
end
