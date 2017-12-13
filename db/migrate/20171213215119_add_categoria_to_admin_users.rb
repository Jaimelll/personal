class AddCategoriaToAdminUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :admin_users, :categoria, :integer,  default: 1,  null: false
  end
end
