class AuthenticateController < ApplicationController
  
  #cancan: skip_authorization_check
  
  def login
    @user = User.new
    if request.post?
      @user.attributes = params[:user]
      #TODO : get from client company name
      #@user.client_id = params[:company_name].to_client_id
      if (@user = User.exists?(@user))
        session[:user_id] = @user.id
        redirect_to client_videos_path(@user.client)
      else
        flash[:notice] = "Invalid Login"
        redirect_to login_path
      end
    end
  end

#this is an unsafe login technique
#need to verify that 
#1) the referring url comes from the client intranet
#2) after the session is assigned give use restricted access
  def intranet_login
    #require a username and location and a token
    errors = []
    errors << "username required" if params[:username].blank?
    errors << "location required" if params[:location].blank?
    if errors.empty?
        @user = @client.users.where(:username => params[:username], :location => params[:location]).first
        if @user
          session[:client_id] = @client.id
          session[:user_id] = @user.id
          redirect_to client_videos_path(@client) #TODO, render video show
          return false
        else
          #TODO create new user passed on username and location if exist
        end
    else
      render :text => errors.join('<br>'), :status => 400
    end
  end


  def logout
    reset_session
    flash[:notice] = "You are logged out"
    redirect_to :action => 'login'    
  end


end
