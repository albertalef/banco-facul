class Category < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["benefits", "created_at", "id", "id_value", "name", "updated_at"]
  end
end
