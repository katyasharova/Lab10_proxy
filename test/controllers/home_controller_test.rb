require 'test_helper'

class HomeControllerTest < ActionDispatch::IntegrationTest
  test "should get input" do
    get input_url
    assert_response :success
  end

  test "should get output" do
    get output_url, :params => { :txt => '1', :process => 'Клиент' }
    assert_response :success
  end

end
