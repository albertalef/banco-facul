class CreateBillStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :bill_statuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
