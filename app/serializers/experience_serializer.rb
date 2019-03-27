class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :current_time, :set_minutes, :user_id, :activity_id, :worth_it, :complete

  belongs_to :user
  belongs_to :activity
end
