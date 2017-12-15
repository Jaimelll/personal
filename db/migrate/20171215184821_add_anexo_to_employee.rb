class AddAnexoToEmployee < ActiveRecord::Migration[5.1]
  def change
    add_column :employees, :anexo, :string
    add_column :employees, :celular_corp, :string
    add_column :employees, :sele3, :integer
    add_column :employees, :obs, :string
  end
end
