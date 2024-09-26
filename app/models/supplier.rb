class Supplier < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["address_id", "category", "cnpj", "created_at", "id", "id_value", "name", "updated_at"]
  end
end
