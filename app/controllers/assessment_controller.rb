class AssessmentController < ApplicationController
  def home
  end

  def example
    require 'open3'
    Open3.capture3("cd ../eg-intern-2017-july-value-model-lite && python api.py")
    redirect_to "http://localhost:8080/predict?room_type=50&num_rooms=1&square=62.30&floor=3&building_type=10&structure_type=40&floor_height=8"
  end

  def formpage
    @datum = Datum.new
  end

  def sendinfo
    @datum = Datum.new(datum_params)
    uri = URI("http://localhost:8080/predict?")
    uri.query = {
room_type: @datum[:room_type], num_rooms: @datum[:num_rooms], square: @datum[:square], floor: @datum[:floor], building_type: @datum[:building_type], structure_type: @datum[:structure_type], floor_height: @datum[:floor_height]
}.to_param
    require 'open3'
    Open3.capture3("cd ../eg-intern-2017-july-value-model-lite && python api.py")
    redirect_to uri.to_s
  end

  def result
  end

  private

    def datum_params
      params.require(:datum).permit(:room_type,:num_rooms,:square,:floor,:building_type,:structure_type,:floor_height)
    end
end
