require 'test_helper'

class StoreControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_select '#columns #sidebar a', minimum: 4
    assert_select '#main .entry', 3
    assert_select 'h3', 'Programming Ruby 1.9'
    assert_select '.price', /&pound;[,\d]+\.\d\d/
    assert_select 'h1', 'Your Pragmatic Catalog'
    assert_select "#sidebar a" do
      assert_select "[href=?]", /.+/  # Not empty
    end
  end
end
