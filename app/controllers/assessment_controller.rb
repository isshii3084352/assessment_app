class AssessmentController < ApplicationController
  def home
  end

  def example
    require 'open3'
    Open3.capture3("cd ../eg-intern-2017-july-value-model-lite && python api.py")
    redirect_to "http://localhost:8080/predict?room_type=50&num_rooms=1&square=62.30&floor=3&building_type=10&structure_type=40&floor_height=8"
  end
end
