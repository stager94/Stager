class NewsController < ApplicationController
  # add_breadcrumb I18n.t("breadcrumbs.home"), :root_path

  before_filter :find_new, :only => [:show, :destroy, :edit, :update]

	add_breadcrumb I18n.t("breadcrumbs.news"), :news_index_path
	def index
		@title = t('titles.news')
		@news = New.moderated.page(params[:page]).per(5)
	end

	def show				
		add_breadcrumb @new.title, news_path(@new)
	end

	def new
		if current_user.nil? || !current_user.role
			redirect_to news_index_path
		else
			add_breadcrumb t('breadcrumbs.addnew'), new_news_path
			@new = New.new
		end
	end

	def create
		@new = New.new(params['new'])
		@new.user = current_user
		if @new.save
			@new = New.new
		end
		render :new
	end

	def destroy
		if !current_user.nil? && current_user.role
			@new.destroy
			redirect_to news_index_path
		else
			redirect_to news_path(@new)
		end
	end

	def edit
		add_breadcrumb @new.title, news_path(@new)
		add_breadcrumb t('breadcrumbs.editnew'), edit_news_path
		redirect_to news_path(@new) if current_user.nil? || !current_user.role
	end

	def update		
		@new.update_attributes(params[:new])
		redirect_to news_path(@new)
	end

	private

	def find_new
		@new = New.find(params[:id])
	end
end