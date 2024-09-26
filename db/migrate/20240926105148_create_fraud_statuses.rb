class CreateFraudStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :fraud_statuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
