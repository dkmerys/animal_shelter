class AnimalsController < ApplicationController

  def index
    @animals = {"animal": "Spike is a good dog"}
    json_response(@animals)
  end

  private
  def json_response(object, status = :ok)
    render json: object, status: status
  end
end