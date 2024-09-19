class Alert < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["created_at", "description", "id", "id_value", "updated_at"]
  end
end
