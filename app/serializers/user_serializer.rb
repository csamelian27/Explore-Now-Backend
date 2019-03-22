class UserSerializer < ActiveModel::Serializer
  attributes :id, :email, :password

  has_many :experiences
  has_many :activities, through: :experiences
end
