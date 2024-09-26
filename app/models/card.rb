class Card < ApplicationRecord
  belongs_to :user
  belongs_to :brand
  belongs_to :category
  belongs_to :card_status
  def self.ransackable_attributes(_auth_object = nil)
    %w[brand_id card_status_id category_id created_at credit_limit cvv id id_value number
       tax updated_at user_id valid_at]
  end
end
