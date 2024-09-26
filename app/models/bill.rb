class Bill < ApplicationRecord
  belongs_to :bill_status, foreign_key: :status_id
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "due_at", "id", "id_value", "paid_amount", "paid_at", "status_id", "total_amount", "updated_at"]
  end
end
