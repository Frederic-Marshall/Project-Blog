class ApplicationController < ActionController::Base
  add_flash_types :success, :danger, :info, :warning
	
	before_action :set_locale
  before_action :configure_permitted_parameters,
  
		if: :devise_controller?
			
			protected
			
			def configure_permitted_parameters
				devise_parameter_sanitizer.permit(:sign_up, keys: [:avatar])
				devise_parameter_sanitizer.permit(:account_update, keys: [:avatar])
			end
			
	private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
  end

  def default_url_options(options = {})
    { locale: I18n.locale }.merge options
  end
end
