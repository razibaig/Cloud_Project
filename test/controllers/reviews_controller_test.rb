require 'test_helper'

class ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get add_review" do
    get reviews_add_review_url
    assert_response :success
  end

end
