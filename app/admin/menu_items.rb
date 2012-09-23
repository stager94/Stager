ActiveAdmin.register MenuItem do
    index do
        id_column
        column :title
        column :position
        column :status
        column :static_page
        column :created_at
        column :updated_at
        default_actions
    end
end
