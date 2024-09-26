class Parcel < ApplicationRecord
  belongs_to :bill
  belongs_to :bill_status, foreign_key: :status_id
  def self.ransackable_attributes(_auth_object = nil)
    %w[amount bill_id created_at due_at id id_value number status_id updated_at]
  end
end
