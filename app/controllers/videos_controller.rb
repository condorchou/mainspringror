class VideosController < ApplicationController
  # GET /clients/videos
  # GET /clients/videos.xml
 # before_filter :find_client
  load_and_authorize_resource :client
  load_and_authorize_resource :video, :through => :client, :except => [:banner]
  
  
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @videos }
    end
  end

  # GET /clients/videos/1
  # GET /clients/videos/1.xml
  def show
   
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video }
    end
  end

  # GET /clients/videos/new
  # GET /clients/videos/new.xml
  def new
    @video = @client.videos.build

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @video }
    end
  end

  # GET /clients/videos/1/edit
  def edit
  end

  # POST /clients/videos
  # POST /clients/videos.xml
  def create
    @video = @client.videos.build(params[:video])

    respond_to do |format|
      if @video.save
        format.html { redirect_to([@client,@video], :notice => 'Video was successfully created.') }
        format.xml  { render :xml => @video, :status => :created, :location => @video }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /clients/videos/1
  # PUT /clients/videos/1.xml
  def update

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to([@client,@video], :notice => 'Video was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/videos/1
  # DELETE /clients/videos/1.xml
  def destroy
    @video.destroy

    respond_to do |format|
      format.html { redirect_to(client_videos_path(@client)) }
      format.xml  { head :ok }
    end
  end
end
