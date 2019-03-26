class ExperienceSerializer < ActiveModel::Serializer
  attributes :id, :date, :user_id, :activity_id, :worth_it, :complete

  belongs_to :user
  belongs_to :activity
end
