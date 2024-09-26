class Transaction < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["bill_id", "created_at", "description", "dispute_id", "fraud_id", "id", "id_value", "supplier_id", "transaction_status_id", "updated_at", "value"]
  end
end
