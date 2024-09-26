class BillParcel < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    ["bill_id", "created_at", "id", "id_value", "parcel_id", "updated_at"]
  end
end
