class CreateTransactions < ActiveRecord::Migration[7.1]
  def change
    create_table :transactions do |t|
      t.references :supplier
      t.references :transaction_status
      t.references :fraud, null: true
      t.references :dispute, null: true
      t.references :bill, null: true
      t.decimal :value, null: false, precision: 12, scale: 2
      t.string :description, null: false

      t.timestamps
    end
  end
end
