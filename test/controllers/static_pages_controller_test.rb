require 'test_helper'

class StaticPagesControllerTest < ActionController::TestCase
  test "should get legal-notices" do
    get :legal-notices
    assert_response :success
  end

  test "should get team" do
    get :team
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get concept" do
    get :concept
    assert_response :success
  end

end
