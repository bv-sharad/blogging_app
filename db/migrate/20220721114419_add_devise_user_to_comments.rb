class AddDeviseUserToComments < ActiveRecord::Migration[5.2]
  def change
    add_reference :comments, :u, foreign_key: true
  end
end
