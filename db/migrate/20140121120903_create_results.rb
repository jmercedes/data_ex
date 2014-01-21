class CreateResults < ActiveRecord::Migration
  def change
    create_table :results do |t|
      t.string :patient
      t.integer :age
      t.string :gender

      t.timestamps
    end
  end
end
