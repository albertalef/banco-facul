class DependentCard < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["card_id", "created_at", "credit_limit", "cvv", "id", "id_value", "number", "updated_at"]
  end
end
