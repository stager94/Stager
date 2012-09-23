class CreateStaticPages < ActiveRecord::Migration
  def change
    create_table :static_pages do |t|
      t.string :title
      t.text :content
      t.string :status

      t.timestamps
    end
  end
end
