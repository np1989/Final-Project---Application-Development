class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_user!
before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.for(:sign_up) << :email
  devise_parameter_sanitizer.for(:sign_up) << :last_name
  devise_parameter_sanitizer.for(:sign_up) << :first_name
  devise_parameter_sanitizer.for(:sign_up) << :country_location
  devise_parameter_sanitizer.for(:sign_up) << :city_location
  devise_parameter_sanitizer.for(:sign_up) << :usertype
  devise_parameter_sanitizer.for(:sign_up) << :dob
  devise_parameter_sanitizer.for(:sign_up) << :description
  devise_parameter_sanitizer.for(:sign_up) << :picture


  devise_parameter_sanitizer.for(:account_update) << :email
  devise_parameter_sanitizer.for(:account_update) << :city_location
  devise_parameter_sanitizer.for(:account_update) << :country_location
  devise_parameter_sanitizer.for(:account_update) << :description
  devise_parameter_sanitizer.for(:account_update) << :picture

end
end

