class User < ApplicationRecord
  has_many :experiences
  has_many :activities, through: :experiences
end
