class ApplicationController < ActionController::Base
  protect_from_forgery
  
  before_filter :add_compact_policy, :verify_session

  private

  def add_compact_policy
    # headers["P3P"]='CP="NOI DSP COR NID ADM DEV PSA OUR IND UNI PUR COM NAV INT STA"'
    # headers["P3P"]='CP="NID DSP ALL COR"'
    # headers["P3P"]='CP="NOI DSP COR CURa OUR NOR"'
    headers["P3P"]='CP="NON DSP IVDa OUR IND COM NAV INT DEM"'
  end

#call this in a before_filter for any actions you want to protect 
  def verify_session
    if session[:user_id].blank? || session[:client_id].blank?
      reset_session
      render :text => 'Access Denied', :status => 400
      return false
    end
  end

end
