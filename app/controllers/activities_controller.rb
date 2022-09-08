class ActivitiesController < ApplicationController
  def index
    activities = Activity.all
    render json: activities
  end

  def destroy
    activity = Activity.find(params[:id])
    activity.destroy!
    render json: {}, status: :no_content
  end

end
