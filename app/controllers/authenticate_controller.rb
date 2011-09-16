class AuthenticateController < ApplicationController
  
   #TODO protect this method from easy access
#use salted hash, take token, plus user_id, random string, create md5

  def index
#log any previous user out
    @user_id = params[:user_id]
    @username = params[:username]
    @client_handle = params[:client_handle]
    @location = params[:location]
    @client = Client.where(:handle => @client_handle).first
    if @client.nil?
      respond_to do |format|
        format.js {render :js => "alert('Error Client Nil');"}
      end
      return false
    end
    #see if user exists
    @user = @client.users.where(:authentication_token => "#{@client_handle}_#{@user_id}").first
    if @user.nil?
      #create it
      @user = @client.users.create(:location => @location, :username => @username, :client_user_id => @user_id, :client_id => @client.id)
    end
    sign_in @user
    @authentication_token = @user.authentication_token
    respond_to do |format|
      format.js  
    end
  end

end
