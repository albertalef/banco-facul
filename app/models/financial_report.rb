class FinancialReport < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["bill_id", "category", "created_at", "id", "id_value", "total_paid", "total_spent", "updated_at", "user_id"]
  end
end
