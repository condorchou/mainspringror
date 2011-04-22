class UsersController < ApplicationController
  # GET /clients/users
  # GET /clients/users.xml
  load_and_authorize_resource :client
  load_and_authorize_resource :user, :through => :client

  
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
    @user.destroy

    respond_to do |format|
      format.html { redirect_to(client_users_path(@client)) }
      format.xml  { head :ok }
    end
  end
end
