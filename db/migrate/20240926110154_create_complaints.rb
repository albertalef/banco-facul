class CreateComplaints < ActiveRecord::Migration[7.1]
  def change
    create_table :complaints do |t|
      t.references :user
      t.references :bill_status
      t.string :description, null: false

      t.timestamps
    end
  end
end
