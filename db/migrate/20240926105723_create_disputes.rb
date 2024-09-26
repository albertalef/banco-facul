class CreateDisputes < ActiveRecord::Migration[7.1]
  def change
    create_table :disputes do |t|
      t.references :dispute_status
      t.string :description, null: false

      t.timestamps
    end
  end
end
