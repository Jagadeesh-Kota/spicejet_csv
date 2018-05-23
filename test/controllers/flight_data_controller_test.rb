require 'test_helper'

class FlightDataControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get flight_data_index_url
    assert_response :success
  end

  test "should get save" do
    get flight_data_save_url
    assert_response :success
  end

end
