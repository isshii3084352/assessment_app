require 'test_helper'

class AssessmentControllerTest < ActionDispatch::IntegrationTest
  test "should get home" do
    get assessment_home_url
    assert_response :success
  end

  test "should get example" do
    get assessment_example_url
    assert_response :success
  end

end
