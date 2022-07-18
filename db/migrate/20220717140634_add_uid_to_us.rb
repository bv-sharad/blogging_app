class AddUidToUs < ActiveRecord::Migration[5.2]
  def change
    add_column :us, :uid, :string
  end
end
