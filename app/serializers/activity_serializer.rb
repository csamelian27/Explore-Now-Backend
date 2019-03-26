class ActivitySerializer < ActiveModel::Serializer
  attributes :id, :term, :location, :name, :image_url, :url, :rating, :display_phone

  has_many :experiences
  has_many :users, through: :experiences
end
