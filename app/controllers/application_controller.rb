class ApplicationController < ActionController::Base
before_filter :require_login

  protected
def not_authenticated
  redirect_to login_url, :alert => "First login to access this page."
end

end
