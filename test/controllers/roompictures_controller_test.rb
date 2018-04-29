require 'test_helper'

class RoompicturesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get roompictures_index_url
    assert_response :success
  end

  test "should get add_picture" do
    get roompictures_add_picture_url
    assert_response :success
  end

  test "should get remove_picture" do
    get roompictures_remove_picture_url
    assert_response :success
  end

end
