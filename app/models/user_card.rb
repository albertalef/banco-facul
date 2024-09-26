class UserCard < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
    ["card_id", "created_at", "id", "id_value", "updated_at", "user_id"]
  end
end
