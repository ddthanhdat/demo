require 'test_helper'

class VandonsControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get vandons_index_url
    assert_response :success
  end

end
