class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?



protected

def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:username,:first_name, :last_name ,:email, :password,:avatar, :remember_me)}
    devise_parameter_sanitizer.permit(:sign_in) { |u| u.permit(:username,:first_name, :last_name, :email, :password, :remember_me)}
    devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:username, :first_name, :last_name, :email, :password, :currentpassword, :remember_me, :avatar)}
end

end
