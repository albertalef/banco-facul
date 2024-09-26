class CreateBillParcels < ActiveRecord::Migration[7.1]
  def change
    create_table :bill_parcels do |t|
      t.references :bill
      t.references :parcel

      t.timestamps
    end
  end
end
