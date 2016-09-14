require 'test_helper'

class ThemesControllerTest < ActionController::TestCase
  test "should get tipo" do
    get :tipo
    assert_response :success
  end

  test "should get buttons" do
    get :buttons
    assert_response :success
  end

end
