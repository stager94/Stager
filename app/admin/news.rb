ActiveAdmin.register New do

  scope :all
  scope :moderated
  scope :favourite

  index do
    id_column
    column(t('adminpanel.news.title'), :title)
    column(t('adminpanel.news.display'), :status)
    column(t('adminpanel.news.favourite'), :favourite)
    column(t('adminpanel.news.author'), :user)
    column(t('adminpanel.news.created_at'), :created_at)
    column(t('adminpanel.news.updated_at'), :updated_at)

    default_actions
  end

	form do |f|
  	f.inputs "Details" do
  	  f.input :title
  	  f.input :status, :label => 'Display new'
      f.input :favourite, :label => 'Favourite new'
  	  f.input :user, label: 'Author', :as => :select, :collection => User.all.map{|b| [b.nickname, b.id]}
  	end
  	f.inputs "Content small" do
  	  f.input :content_small, :label => false, :input_html => {:class => "ckeditor"}
  	end
  	f.inputs "Content full" do
  	  f.input :content_full, :label => false, :input_html => {:class => "ckeditor"}
  	end
  	   	
  	f.buttons
  end  
end
