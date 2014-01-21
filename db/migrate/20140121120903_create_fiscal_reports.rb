class CreateFiscalReports < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :company

      t.timestamps
    end
  end
end
