class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :find_services
  before_action :set_locale

  I18n.available_locales = [:en, :ar]
  I18n.default_locale = :en

  # app/controllers/application_controller.rb
  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end


  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def find_services
    @services = Service.all
  end

end
