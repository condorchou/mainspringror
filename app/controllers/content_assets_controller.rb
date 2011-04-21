class ContentAssetsController < ApplicationController
  # GET /content_assets
  # GET /content_assets.xml

  load_and_authorize_resource :client
  load_and_authorize_resource :content_asset, :through => :client


  def index
    @content_assets = ContentAsset.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @content_assets }
    end
  end

  # GET /content_assets/1
  # GET /content_assets/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @content_asset }
    end
  end

  # GET /content_assets/new
  # GET /content_assets/new.xml
  def new
    @content_asset = @client.content_assets.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @content_asset }
    end
  end

  # GET /content_assets/1/edit
  def edit
  end

  # POST /content_assets
  # POST /content_assets.xml
  def create
    @content_asset = @client.content_assets.build(params[:content_asset])

    respond_to do |format|
      if @content_asset.save
        format.html { redirect_to([@client, @content_asset], :notice => 'Content asset was successfully created.') }
        format.xml  { render :xml => @content_asset, :status => :created, :location => @content_asset }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @content_asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /content_assets/1
  # PUT /content_assets/1.xml
  def update

    respond_to do |format|
      if @content_asset.update_attributes(params[:content_asset])
        format.html { redirect_to([@client, @content_asset], :notice => 'Content asset was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @content_asset.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /content_assets/1
  # DELETE /content_assets/1.xml
  def destroy
    @content_asset.destroy

    respond_to do |format|
      format.html { redirect_to(client_content_assets_url(@client)) }
      format.xml  { head :ok }
    end
  end
end
