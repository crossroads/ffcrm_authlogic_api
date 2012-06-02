class ApplicationController

  private

  #
  # One day soon, we hope ffcrm will have it's own api token authentication
  # When this is done, we should rewrite the code below
  #
  #----------------------------------------------------------------------------
  def require_application
    unless (@current_application_session ||= ApplicationSession.find)
      redirect_to login_url
      false
    end
  end
  
end
