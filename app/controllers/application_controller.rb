class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :verify_user


  def after_sign_in_path_for(resource_or_scope)
    admin_path
  end

  # Tell Devise to redirect after sign_out
  def after_sign_out_path_for(resource_or_scope)
    index_path
  end

  def verify_user
    if Rails.env.production?
      authenticate_or_request_with_http_basic do |user_name, password|
        user_name == "wwd" && password == "blairdev"
      end
      warden.custom_failure! if performed?
    end
  end

end
