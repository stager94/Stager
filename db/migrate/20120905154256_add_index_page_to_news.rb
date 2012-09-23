class AddIndexPageToNews < ActiveRecord::Migration
  def change
  	  add_column :news, :favourite, :boolean
  end
end
