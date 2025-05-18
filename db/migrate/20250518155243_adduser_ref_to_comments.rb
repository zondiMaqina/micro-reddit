class AdduserRefToComments < ActiveRecord::Migration[8.0]
  def up
    add_reference :comments, :user, null: true, foreign_key: true
  end

  def down
    remove_reference :comments, :user, index: true, foreign_key: true
  end
end
