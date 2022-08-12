class AddReferencesToUs < ActiveRecord::Migration[5.2]
  def change
    add_reference :us, :article, foreign_key: true
  end
end
