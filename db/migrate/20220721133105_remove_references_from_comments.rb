class RemoveReferencesFromComments < ActiveRecord::Migration[5.2]
  def change
    remove_reference :comments, :us, foreign_key: true
  end
end
