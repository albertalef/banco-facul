class BillCard < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["bill_id", "card_id", "created_at", "id", "id_value", "updated_at"]
  end
end
