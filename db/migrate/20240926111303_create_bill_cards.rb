class CreateBillCards < ActiveRecord::Migration[7.1]
  def change
    create_table :bill_cards do |t|
      t.references :card
      t.references :bill

      t.timestamps
    end
  end
end
