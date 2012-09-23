class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
      t.string :title
      t.integer :position
      t.string :status
      t.references :static_page

      t.timestamps
    end
    add_index :menu_items, :static_page_id
  end
end
