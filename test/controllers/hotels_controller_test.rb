require 'test_helper'

class HotelsControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get hotels_home_url
    assert_response :success
  end

end
