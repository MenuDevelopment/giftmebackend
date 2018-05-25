class User < ApplicationRecord
  has_many :pledges
  has_many :gifts, through: :pledges
  has_many :created_gifts, class_name: "Gift"

  has_secure_password
end
