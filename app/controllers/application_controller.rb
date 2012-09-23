class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale
  before_filter :set_variables
  require 'open-uri'
  require 'nokogiri'

  def index
    # add_breadcrumb I18n.t("breadcrumbs.home"), :root_path
    @title = t('titles.home')
  	@news = New.favourite
  end

  def set_variables
  	@menu_items_all = MenuItem.ordering
  end

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    # I18n.locale = params[:locale] || 'ru'
    add_breadcrumb I18n.t("breadcrumbs.home"), :root_path
  end

end