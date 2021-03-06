class ClientsController < ApplicationController
  # GET /clients
  # GET /clients.xml
  load_resource :find_by => :handle
  authorize_resource :except => [:style, :behavior]

  def index
    @clients = Client.all
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @clients }
      format.json { render :json => @clients }
    end
  end

  def style
    respond_to do |format|
    #  format.html { render :text => @client.css}
      format.css 
    end

  end

  def behavior
    respond_to do |format|
    #  format.html { render :text => @client.css}
      format.js
    end

  end


  # GET /clients/1
  # GET /clients/1.xml
  def show
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @client }
      format.json { render :json => @client }
    end
  end

  # GET /clients/new
  # GET /clients/new.xml
  def new
    @client = Client.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @client }
    end
  end

  # GET /clients/1/edit
  def edit
  end

  # POST /clients
  # POST /clients.xml
  def create
    @client = Client.new(params[:client])

    respond_to do |format|
      if @client.save
        format.html { redirect_to(@client, :notice => 'Client was successfully created.') }
        format.xml  { render :xml => @client, :status => :created, :location => @client }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/1
  # PUT /clients/1.xml
  def update

    respond_to do |format|
      if @client.update_attributes(params[:client])
        format.html { redirect_to(@client, :notice => 'Client was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @client.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/1
  # DELETE /clients/1.xml
  def destroy
    @client.destroy

    respond_to do |format|
      format.html { redirect_to(clients_url) }
      format.xml  { head :ok }
    end
  end
end
