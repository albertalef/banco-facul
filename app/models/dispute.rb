class Dispute < ApplicationRecord
  belongs_to :dispute_status
  def self.ransackable_attributes(_auth_object = nil)
    %w[created_at description dispute_status_id id id_value updated_at]
  end
end
