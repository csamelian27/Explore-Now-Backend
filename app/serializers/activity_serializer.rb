class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :category, :location

  has_many :experiences
  has_many :users, through: :experiences
end
