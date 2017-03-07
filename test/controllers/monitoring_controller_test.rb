require 'test_helper'

class MonitoringControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get monitoring_index_url
    assert_response :success
  end

end
