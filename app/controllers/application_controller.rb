# Controller parent class
#
# Contains the current_user definition
#
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  include Pundit
  protect_from_forgery with: :exception

  # Set up params for devise controllers
  before_action :configure_permitted_parameters, if: :devise_controller?


  protected

  def configure_permitted_parameters
    # Set parameters for devise sign_up method
    devise_parameter_sanitizer.for( :sign_up ) << :username
    devise_parameter_sanitizer.for( :sign_up ) << :password_confirmation
    # Set parameters for devise sign_in method
    devise_parameter_sanitizer.for( :sign_in ) << :username
    devise_parameter_sanitizer.for( :sign_in ) << :password_confirmation
    # Set parameters for devise account update method
    devise_parameter_sanitizer.for( :account_update ) << :username
    devise_parameter_sanitizer.for( :account_update ) << :password_confirmation
  end

  def verified_request?
    super || form_authenticity_token == request.headers['X-XSRF-TOKEN']
  end
end
