class CreateFrauds < ActiveRecord::Migration[7.1]
  def change
    create_table :frauds do |t|
      t.references :fraud_status
      t.date :detected_at, null: false
      t.string :description, null: false

      t.timestamps
    end
  end
end
