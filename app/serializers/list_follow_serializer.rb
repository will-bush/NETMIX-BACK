class ListFollowSerializer < ActiveModel::Serializer
  attributes :id, :list_id
  has_one :user
end
