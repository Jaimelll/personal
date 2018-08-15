class CreateFunctions < ActiveRecord::Migration[5.1]
  def change
    create_table :functions do |t|
      t.references :employee, foreign_key: true
      t.string :descripcion
      t.integer :activo
      t.date :inicio
      t.date :fin
      t.string :sele1
      t.integer :sele2
      t.references :admin_user, foreign_key: true

      t.timestamps
    end
  end
end