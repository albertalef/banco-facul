class Dependent < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["birth_date", "card_id", "cpf", "created_at", "id", "id_value", "name", "updated_at", "user_id"]
  end
end
