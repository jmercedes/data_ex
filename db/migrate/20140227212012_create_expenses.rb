class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.integer :line
      t.string :businessid
      t.integer :typeid
      t.integer :account_id
      t.string :ncf
      t.string :modified_document
      t.date :voucher_date
      t.date :payment_date
      t.float :billed_itbis
      t.float :retained_itbis
      t.float :amount_billed
      t.float :retained_isr
      t.string :status

      t.timestamps
    end
  end
end
