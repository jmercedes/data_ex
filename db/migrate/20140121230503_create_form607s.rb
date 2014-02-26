class CreateForm607s < ActiveRecord::Migration
  def change
    create_table :form607s do |t|
      t.string :company

      t.timestamps
    end
  end
end
