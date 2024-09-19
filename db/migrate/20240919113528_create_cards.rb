class CreateCards < ActiveRecord::Migration[7.1]
  def change
    create_table :cards do |t|
      t.references :user, null: false
      t.references :brand, null: false
      t.references :category, null: false
      t.references :card_status, null: false
      t.string :number, null: false
      t.date :valid_at, null: false
      t.string :cvv, null: false
      t.decimal :credit_limit, precision: 12, scale: 2
      t.decimal :tax, precision: 5, scale: 2

      t.timestamps
    end
  end
end
