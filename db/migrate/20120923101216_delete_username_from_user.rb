class DeleteUsernameFromUser < ActiveRecord::Migration
  def up
  end

  def down
    remove_column :users, :username
  end
end
