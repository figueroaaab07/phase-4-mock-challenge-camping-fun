class CampersController < ApplicationController
  def index
    campers = Camper.all
    render json: campers, each_serializer: CamperIndexSerializer
  end

  def show
    camper = Camper.find(params[:id])
    render json: camper
  end

  def create
    camper = Camper.create!(camper_params)
    render json: camper, status: :created
  end

  private

  def camper_params
    params.permit(:id, :name, :age)
  end

end
