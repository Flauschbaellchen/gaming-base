class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception


  before_filter :set_locale, :set_time_zone

  def url_options
    { :locale => I18n.locale }.merge(super)
  end

  private

  def set_locale
    begin
      I18n.locale = (params[:locale] || I18n.default_locale)
    rescue I18n::InvalidLocaleData, I18n::InvalidLocale
      redirect_to(main_app.root_url, :alert => "Language not supported") and return
    end
  end

  def set_time_zone
    if user_signed_in? && current_user.time_zone
      Time.zone = current_user.time_zone 
    end
  end
end
