class Fraud < ApplicationRecord
    def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "detected_at", "fraud_status_id", "id", "id_value", "updated_at"]
  end
end
