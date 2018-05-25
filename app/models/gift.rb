class Gift < ApplicationRecord
  belongs_to :creator, foreign_key: "user_id", class_name: "User"
  has_many :pledges
  has_many :users, through: :pledges
end
