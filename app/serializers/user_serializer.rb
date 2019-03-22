class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password, :price, :radius

  has_many :experiences
  has_many :activities, through: :experiences
end
