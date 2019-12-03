class UserFollowSerializer < ActiveModel::Serializer
  attributes :id, :following_id
  has_one :user
end
