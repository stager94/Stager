ActiveAdmin.register User do

  index do
    id_column
    column :nickname
    column :fio
    column :email
    column :skype
    column :role
    column :created_at
    column :updated_at
    default_actions
  end

  	form do |f|
    	f.inputs "Details" do
    	  f.input :nickname
    	  f.input :fio
    	  f.input :email
    	  f.input :skype
          f.input :role
    	  f.input :avatar, :as => :file
    	end
    	f.buttons
    end
end
