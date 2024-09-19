class CreateBills < ActiveRecord::Migration[7.1]
  def change
    create_table :bills do |t|
      t.references :status, foreign_key: { to_table: :bill_statuses }
      t.decimal :total_amount, null: false, precision: 12, scale: 2
      t.decimal :paid_amount, null: false, precision: 12, scale: 2
      t.datetime :paid_at
      t.date :due_at, null: false

      t.timestamps
    end
  end
end
