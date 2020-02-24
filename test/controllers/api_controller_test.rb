require 'test_helper'

class ApiControllerTest < ActionDispatch::IntegrationTest
  test "should get tasks" do
    get api_tasks_url
    assert_response :success
  end

end
