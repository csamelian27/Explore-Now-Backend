class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :username, :price, :radius

  has_many :experiences
  has_many :activities, through: :experiences
end
