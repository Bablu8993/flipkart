class ApplicationController < ActionController::API
  include Knock::Authenticable
  
  protected
  # Method for checking if current_user is admin or not.
  def authorize_as_admin
    render json:{msg:"Not Authorize Only Admin allowed"} unless !current_user.nil? && current_user.is_admin?
  end
end
