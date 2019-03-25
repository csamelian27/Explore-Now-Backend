class Api::V1::ExperiencesController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    @experience = Experience.create(experience_params)
    render json: @experience
  end

  private
  def experience_params
    params.require(:experience).permit(:date, :user_id, :activity_id, :worth_it?, :complete?)
  end

end
