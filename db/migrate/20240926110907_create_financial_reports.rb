class CreateFinancialReports < ActiveRecord::Migration[7.1]
  def change
    create_table :financial_reports do |t|
      t.references :user
      t.references :bill
      t.decimal :total_spent, null: false, precision: 12, scale: 2
      t.decimal :total_paid, null: false, precision: 12, scale: 2
      t.string :category, null: false

      t.timestamps
    end
  end
end
