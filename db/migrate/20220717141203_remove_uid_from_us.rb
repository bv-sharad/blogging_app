class RemoveUidFromUs < ActiveRecord::Migration[5.2]
  def change
    remove_column :us, :uid, :string
  end
end
