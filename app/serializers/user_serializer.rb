class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :price, :radius, :password

  has_many :experiences
  has_many :activities, through: :experiences
end
