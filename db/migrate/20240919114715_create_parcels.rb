class CreateParcels < ActiveRecord::Migration[7.1]
  def change
    create_table :parcels do |t|
      t.references :status, foreign_key: { to_table: :bill_statuses }, null: false
      t.references :bill, null: false
      t.decimal :amount, null: false, precision: 12, scale: 2
      t.date :due_at, null: false
      t.integer :number, null: false

      t.timestamps
    end
  end
end
