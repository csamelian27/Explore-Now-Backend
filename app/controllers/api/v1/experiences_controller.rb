class Api::V1::ExperiencesController < ApplicationController
  skip_before_action :authorized, only: [:create, :update, :destroy]

  def create
    @experience = Experience.create(experience_params)
    render json: @experience
  end

  def update
    @experience = Experience.find(params[:id])
    @experience.update(experience_params)
    @user = User.find(@experience.user_id)
    render json: @user
  end

  def destroy
    @experience = Experience.find(params[:id])
    @experience.delete
  end

  private
  def experience_params
    params.require(:experience).permit(:current_time, :set_minutes, :user_id, :activity_id, :worth_it, :complete)
  end

end
