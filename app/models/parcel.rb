class Parcel < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["amount", "bill_id", "created_at", "due_at", "id", "id_value", "number", "status_id", "updated_at"]
  end
end
