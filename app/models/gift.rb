class Gift < ApplicationRecord
  belongs_to :creator, class_name: "User"
  has_many :pledges
  has_many :users, through: :pledges
end
