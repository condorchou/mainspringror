class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :add_compact_policy
  
  rescue_from CanCan::AccessDenied do |exception|
    redirect_to root_url, :alert => exception.message
  end
  
  #cancan: ensure authorization happens on every action in your applciation
  #check_authorization

#HAD TO MOVE THIS TO APPLICATION CONTROLLER FOR SOME REASON
  def after_sign_in_path_for(resource) 
   #TODO redirect to last user ajax action
    if resource.role == 'super_user'
      clients_path
    elsif resource.role == 'client_admin'
      client_videos_path(resource.client)
    else
      root_path
    end
  end 


  private

#  def current_user
#    return User.where(:id => session[:user_id]).first
#  end

  def add_compact_policy
    # headers["P3P"]='CP="NOI DSP COR NID ADM DEV PSA OUR IND UNI PUR COM NAV INT STA"'
    # headers["P3P"]='CP="NID DSP ALL COR"'
    # headers["P3P"]='CP="NOI DSP COR CURa OUR NOR"'
    headers["P3P"]='CP="NON DSP IVDa OUR IND COM NAV INT DEM"'
  end

end
