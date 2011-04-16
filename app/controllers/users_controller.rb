class UsersController < ApplicationController
  # GET /clients/users
  # GET /clients/users.xml
  skip_before_filter :verify_session, :only => [:login, :login_or_create]
  before_filter :find_client

  def find_client
    @client = Client.find(params[:client_id])
    if @client.nil?
      raise "Invalid Client request"
    end
  end
  
  def index
    @users = User.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @users }
    end
  end

  # GET /clients/users/1
  # GET /clients/users/1.xml
  def show
    @user = User.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /clients/users/new
  # GET /clients/users/new.xml
  def new
    @user = @client.users.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @user }
    end
  end

  # GET /clients/users/1/edit
  def edit
    @user = @client.users.find(params[:id])
  end

  # POST /clients/users
  # POST /clients/users.xml
  def create
    @user = @client.users.build(params[:user])

    respond_to do |format|
      if @user.save
        format.html { redirect_to([@client, @user], :notice => 'User was successfully created.') }
        format.xml  { render :xml => @user, :status => :created, :location => @user }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/users/1
  # PUT /clients/users/1.xml
  def update
    @user = @clients.users.find(params[:id])

    respond_to do |format|
      if @user.update_attributes(params[:user])
        format.html { redirect_to([@client,@user], :notice => 'User was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @user.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/users/1
  # DELETE /clients/users/1.xml
  def destroy
    @user = @client.users.find(params[:id])
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(client_users_path(@client)) }
      format.xml  { head :ok }
    end
  end
end
