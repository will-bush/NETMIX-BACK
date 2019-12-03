class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :listings, through: :lists
    has_many :userFollows
    has_many :listFollows

    after_create :attach_default_list, :attach_default_user_follow, :attach_default_list_follow

    private

    def attach_default_list
        List.create(user_id: self.id, list_name: "My Netmix", description: self.username + "'s first Netmix playlist")
    end

    def attach_default_user_follow
        UserFollow.create(user_id: self.id, following_id: 24)
    end

    def attach_default_list_follow
        ListFollow.create(user_id: self.id, list_id: 55)
    end
end
