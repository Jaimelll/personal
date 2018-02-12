class AddVigenciaToEmployees < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :vigencia, :date
  end
end
