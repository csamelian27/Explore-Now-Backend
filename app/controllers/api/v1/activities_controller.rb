class Api::V1::ActivitiesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    # byebug
    @activity = Activity.create(activity_params)
    render json: @activity
  end

  private
  def activity_params
    params.require(:activity).permit(:term, :location, :name, :image_url, :url, :rating, :display_phone)
  end

end
