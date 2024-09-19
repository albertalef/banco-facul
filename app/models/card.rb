class Card < ApplicationRecord
  belongs_to :user
  def self.ransackable_attributes(auth_object = nil)
    ["brand_id", "card_status_id", "category_id", "created_at", "credit_limit", "cvv", "id", "id_value", "number", "tax", "updated_at", "user_id", "valid_at"]
  end
end
