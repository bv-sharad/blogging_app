class AddDeviseUserToArticles < ActiveRecord::Migration[5.2]
  def change
    add_reference :articles, :u, foreign_key: true
  end
end
