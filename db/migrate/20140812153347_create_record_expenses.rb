class CreateRecordExpenses < ActiveRecord::Migration
  def change
    create_table :record_expenses do |t|
      t.date :date
      t.string :location
      t.string :purchaseDescription
      t.decimal :amount
      t.string :paymentDescription

      t.timestamps
    end
  end
end
