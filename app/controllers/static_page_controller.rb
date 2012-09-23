class StaticPageController < ApplicationController
  # add_breadcrumb I18n.t("breadcrumbs.home"), :root_path
	def show
		@title = StaticPage.find(params['id']).title
		@static_page = StaticPage.find(params['id'])
		add_breadcrumb @static_page.title, static_page_path[@static_page.title]
	end
end