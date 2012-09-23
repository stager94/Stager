class RemoveUsernameToUsers < ActiveRecord::Migration
  def up
  end

  def down
  	remove_column :userasd, :usernameasdasd
  end
end
