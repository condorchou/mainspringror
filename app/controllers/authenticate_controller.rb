class AuthenticateController < ApplicationController
  
  #cancan: skip_authorization_check
  
  def login
    @user = User.new
    if request.post?
      @user.attributes = params[:user]
      #TODO : get from client company name
      #@user.client_id = params[:company_name].to_client_id
      if (@user = User.exists?(@user))
        reset_session
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

    opts = {:username => params[:username], :location => params[:location], :token => params[:token]}
    @errors, @user = User.intranet_login(params)

    if @errors.empty?
       
      #authenicate the user
      reset_session
      session[:user_id] = @user.id
      if @user.role == 'client_admin'
        redirect_to client_videos_path(@user.client)
      else
        unless params[:goto].blank?
          dest_url =CGI::unescape(params[:goto])
         #only needs to be true for one request, so we don't store long term in session
          flash[:permalink_urls] = true
          redirect_to dest_url
          return false
        end

        #TODO, redirect to featured video, or goto params
        #
        @video = @user.client.videos.last
        redirect_to client_video_path(@user.client,@video)
      end
    else
      render :text => @errors.join('<br>'), :status => 400
    end

  end


  def logout
    reset_session
    flash[:notice] = "You are logged out"
    redirect_to :action => 'login'    
  end


end
