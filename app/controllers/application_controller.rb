class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :set_locale

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options
    { locale: I18n.locale }
  end

  protected
  def authenticate_user!
    if user_signed_in?
      super
    else
      redirect_to root_path
    end
  end
end
