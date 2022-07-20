class AddAdminToUs < ActiveRecord::Migration[5.2]
  def change
    add_column :us, :admin, :boolean
  end
end
