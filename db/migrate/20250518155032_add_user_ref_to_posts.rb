class AddUserRefToPosts < ActiveRecord::Migration[8.0]
  def up
    add_reference :posts, :user, null: false, foreign_key: true
  end

  def down
    remove_reference :posts, :user, index: true, foreign_key: true
  end
end
