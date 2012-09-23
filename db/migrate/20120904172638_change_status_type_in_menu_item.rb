class ChangeStatusTypeInMenuItem < ActiveRecord::Migration
  def up
  	change_column :menu_items, :status, :boolean
  end

  def down
  end
end
