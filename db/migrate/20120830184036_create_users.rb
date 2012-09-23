class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nickname
      t.string :password
      t.string :fio
      t.string :email
      t.string :skype
      t.attachment :avatar

      t.timestamps
    end
  end
end
