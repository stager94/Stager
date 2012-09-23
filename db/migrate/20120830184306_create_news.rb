class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string :title
      t.text :content_small
      t.text :content_full
      t.references :user
      t.string :status

      t.timestamps
    end
    add_index :news, :user_id
  end
end
