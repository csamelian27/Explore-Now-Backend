class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :term, :location

  has_many :experiences
  has_many :users, through: :experiences
end
