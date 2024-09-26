class CreateDependentCards < ActiveRecord::Migration[7.1]
  def change
    create_table :dependent_cards do |t|
      t.references :card
      t.string :number, null: false
      t.string :cvv, null: false
      t.decimal :credit_limit, null: false, precision: 12, scale: 2

      t.timestamps
    end
  end
end
