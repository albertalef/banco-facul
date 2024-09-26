class Transaction < ApplicationRecord
  belongs_to :supplier
  belongs_to :fraud, optional: true
  belongs_to :dispute, optional: true
  belongs_to :bill, optional: true
  belongs_to :transaction_status
  def self.ransackable_attributes(auth_object = nil)
    ["bill_id", "created_at", "description", "dispute_id", "fraud_id", "id", "id_value", "supplier_id", "transaction_status_id", "updated_at", "value"]
  end
end
