class VideosController < ApplicationController
  # GET /clients/videos
  # GET /clients/videos.xml
 # before_filter :find_client
 # load_and_authorize_resource :client
  load_resource :client, :find_by => :handle
  authorize_resource :client

  load_and_authorize_resource :video, :through => :client, :except => [:banner]
 
  rescue_from ActiveRecord::RecordNotFound do |exception|
    redirect_to client_videos_path(@client), :notice => "Video Not Found"
  end 
  
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
    @video.user_id = current_user.id
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
      if @video.save!
        format.html { redirect_to client_video_upload_form_path(@client,@video) }
        format.xml  { render :xml => @video, :status => :created, :location => @video }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
      end
    end
  end
  
  def upload_form
    @video = @client.videos.find(params[:video_id])
    unless @video.botr_video_key.blank?
      flash[:notice] = "This video is already uploaded, remove botr_video_key if you wish to re-upload a video"
      redirect_to :action => 'edit'
    end
  end

  def botr_upload_form
    begin
      @video = @client.videos.find(params[:video_id])
      c = BitsOnTheRun::Client.new('/videos/create')
      @upload_response = BitsOnTheRun::VideoCreateResponse.new(c.response)
      @video.botr_video_key = @upload_response.key
      @video.save!
      @upload_url = @upload_response.send(:url)
    rescue => e
      render :text => "#{e} #{@upload_response.inspect}Unable to Connect to Video Server, please try again later"
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
