class CreateDisputeStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :dispute_statuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
