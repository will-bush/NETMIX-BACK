class User < ApplicationRecord
    has_secure_password
    has_many :lists
    has_many :listings, through: :lists

    after_create :attach_default_list

    private

    def attach_default_list
        List.create(user_id: self.id, list_name: "My Netmix", description: "My first Netmix playlist")
    end
end
