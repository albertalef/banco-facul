class Complaint < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["bill_status_id", "created_at", "description", "id", "id_value", "updated_at", "user_id"]
  end
end
