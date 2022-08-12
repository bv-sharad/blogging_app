class AddCommentToUs < ActiveRecord::Migration[5.2]
  def change
    add_reference :us, :comment, foreign_key: true
  end
end
