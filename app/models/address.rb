class Address < ApplicationRecord
  def self.ransackable_attributes(_auth_object = nil)
    %w[city complement created_at id id_value neighborhood number state street updated_at
       zipcode]
  end
end
