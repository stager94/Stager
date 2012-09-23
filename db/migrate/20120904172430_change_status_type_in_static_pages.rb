class ChangeStatusTypeInStaticPages < ActiveRecord::Migration
  def up
  	change_column :static_pages, :status, :boolean
  end

  def down
  end
end