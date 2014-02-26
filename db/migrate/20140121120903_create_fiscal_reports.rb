class CreateFiscalReports < ActiveRecord::Migration
  def change
    create_table :fiscal_reports do |t|
      t.string :company

      t.timestamps
    end
  end
end
