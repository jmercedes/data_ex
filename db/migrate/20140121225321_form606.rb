class Form606 < ActiveRecord::Migration
  def change
    create_table :form606 do |t|
       t.string :company
       t.string :vendor
       t.string :fiscal_id
       t.string :tipo_bienes_servicios
       t.string :ncf
       t.string :ncf_modificado
       t.string :fecha_de_compra

       t.timestamps
     end
  end
end
