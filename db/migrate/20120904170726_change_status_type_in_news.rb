class ChangeStatusTypeInNews < ActiveRecord::Migration
  def up
  	change_column :news, :status, :boolean
  end

  def down
  end
end
