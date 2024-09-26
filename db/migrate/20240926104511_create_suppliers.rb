class CreateSuppliers < ActiveRecord::Migration[7.1]
  def change
    create_table :suppliers do |t|
      t.references :address
      t.string :name, null: false
      t.string :cnpj
      t.string :category

      t.timestamps
    end
  end
end
