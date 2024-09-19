class CreateCardStatuses < ActiveRecord::Migration[7.1]
  def change
    create_table :card_statuses do |t|
      t.string :name, null: false

      t.timestamps
    end
  end
end
