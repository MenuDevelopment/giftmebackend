class GiftSerializer < ActiveModel::Serializer
  attributes :id, :item, :price
  has_many :pledges
  class PledgeSerializer < ActiveModel::Serializer
    attributes :id, :amount, :user
    def user
      {id: object.user.id, name: object.user.username, email: object.user.email}
    end
  end

end
