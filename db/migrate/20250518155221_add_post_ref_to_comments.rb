class AddPostRefToComments < ActiveRecord::Migration[8.0]
  def up
    add_reference :comments, :post, null: false, foreign_key: true
  end

  def down
    add_reference :comments, :post, index: true, foreign_key: true
  end
end
