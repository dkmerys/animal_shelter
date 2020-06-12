class AnimalsController < ApplicationController

  def index
    @animals = Animal.all
    json_response(@animals)    
  end

  def show
    @animal = Animal.find(params[:id])
    json_response(@animal)
  end

  def create
    @animal = Animal.create!(animal_params)
    json_response(@animal, :created)
  end

  def update
    @animal = Animal.find(params[:id])
    if @animal.update(animal_params)
      render status: 200, json: {
        message: "This animal record has been updated successfully."
      }
    end
  end

  def destroy
    @animal = Animal.find(params[:id])
    if @animal.destroy
      render status: 200, json: {
        message: "This animal record has been successfully deleted."
      }
    end
  end

  def search
    if params[:name].present?
      @animals = Animal.search_by_name(params[:name])
    end
    json_response(@animals)
  end

  private

  def animal_params
    params.permit(:name, :breed, :age, :gender, :quote)
  end
end