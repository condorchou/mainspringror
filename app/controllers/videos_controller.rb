class VideosController < ApplicationController
  # GET /clients/videos
  # GET /clients/videos.xml
 # before_filter :find_client
 # load_and_authorize_resource :client
  load_resource :client, :find_by => :handle
  authorize_resource :client

  load_and_authorize_resource :video, :through => :client, :except => [:banner]

  before_filter :find_user
  
  def find_user
    @user = current_user
  end 
 
  rescue_from ActiveRecord::RecordNotFound do |exception|
    redirect_to client_videos_path(@client), :notice => "Video Not Found"
  end 
  
  def index
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @videos }
      format.json 
    end
  end

  # GET /clients/videos/1
  # GET /clients/videos/1.xml
  def show
  #  @video = Video.includes([:comments, :user]).where(:id => @video.id)
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @video }
    #  format.json { render :json => @video.to_json(:include => {:comments => {:include => {:user => {:only => [:username, :location]}} }}) } 
      format.json
    end
  end

  def new
    @video = @client.videos.build
    @video.user_id = current_user.id
    @call = BitsOnTheRun::call('videos/create')
    @video_key = @call.link.query.key
    @upload_url = @call.upload_url +
      "&redirect_address="+client_videos_path([@client],:only_path => false) +
      "&redirect_query._method=POST" +
      "&redirect_query.auth_token=#{current_user.authentication_token}"
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
        format.html { render :text => "Video Successfully Uploaded" }
     #   format.xml  { render :xml => @video, :status => :created, :location => @video }
      else
        format.html { render :action => "new" }
     #   format.xml  { render :xml => @video.errors, :status => :unprocessable_entity }
      end
    end
  end
=begin  
  def upload_form
    @video = @client.videos.find(params[:video_id])
    if @video.botr_video_key.blank?
      begin
        c = BitsOnTheRun::Client.new('/videos/create')
        @upload_response = BitsOnTheRun::VideoCreateResponse.new(c.response)
        @video.botr_video_key = @upload_response.key
        @video.save!
        @upload_url = @upload_response.send(:url)
      rescue => e
        flash[:notice] = "Unable to Connect to Video Server, please try again later"
        redirect_to edit_client_video_path(@client, @video)
      end

    else
      flash[:notice] = "This video is already uploaded, remove botr_video_key if you wish to re-upload a video"
      redirect_to edit_client_video_path(@client, @video)
      return false
    end
  end
=end


  # PUT /clients/videos/1
  # PUT /clients/videos/1.xml
  def update

    respond_to do |format|
      if @video.update_attributes(params[:video])
        format.html { redirect_to(edit_client_video_path(@client, @video), :notice => 'Video was successfully updated.') }
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
