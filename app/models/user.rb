class User < ApplicationRecord
  has_secure_password
  has_many :experiences
  has_many :activities, through: :experiences
end
