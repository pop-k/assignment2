require 'test_helper'

class PostsControllerTest < ActionDispatch::IntegrationTest
  test "should get main" do
    get posts_main_url
    assert_response :success
  end

end
