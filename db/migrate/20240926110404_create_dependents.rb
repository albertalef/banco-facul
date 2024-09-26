class CreateDependents < ActiveRecord::Migration[7.1]
  def change
    create_table :dependents do |t|
      t.references :card
      t.references :user
      t.string :name, null: false
      t.string :cpf, null: false
      t.date :birth_date, null: false

      t.timestamps
    end
  end
end
