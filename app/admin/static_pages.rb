ActiveAdmin.register StaticPage do

  index do
    id_column
    column(t('adminpanel.staticpages.title'), :title)
    column(t('adminpanel.staticpages.status'), :status)
    column(t('adminpanel.staticpages.created_at'), :created_at)
    column(t('adminpanel.staticpages.updated_at'), :updated_at)
    default_actions
  end

	form do |f|
  	f.inputs "Details" do
  	  f.input :title
  	  f.input :status
  	end
  	f.inputs "Content" do
  	  f.input :content, :label => false, :input_html => {:class => "ckeditor"}
  	end
  	   	
  	f.buttons
  end    
end
