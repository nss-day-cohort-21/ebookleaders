class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

# next six lines have were added on Jan 13, to add name field on registration
before_action :configure_permitted_parameters, if: :devise_controller?

	def configure_permitted_parameters
	  devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :email])
	  devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :twitter_handle, :email, :password, :password_confirmation]) 
	  devise_parameter_sanitizer.permit(:account_update, keys: [:name, :email, :twitter_handle, :author_bio, :reviewer_bio, :password, :password_confirmation, :current_password, :avatar])
	end
end