class ApplicationController < ActionController::Base
  rescue_from CanCan::AccessDenied do |exception|
    # Log the access denied event for debugging purposes
    Rails.logger.debug "Access denied on #{exception.action} #{exception.subject.inspect} for user #{current_user.inspect}"

    # Set the flash message and redirect the user
    flash[:alert] = "You are not authorized to access this page."
    redirect_to root_path # Or another appropriate path
  end
end 