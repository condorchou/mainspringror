class LikesController < ApplicationController
  # GET /clients/likes
  # GET /clients/likes.xml
 # before_filter :find_client
 # load_and_authorize_resource :client
  load_resource :client, :find_by => :handle
  authorize_resource :client

  load_and_authorize_resource :video, :through => :client
  before_filter :find_user
  
  def find_user
    @user = current_user
  end 

  def index

    respond_to do |format|
      format.html # index.html.erb
    end
  end


  # POST /clients/likes
  # POST /clients/likes.xml
  def create
    @like = @video.likes.build(params[:like])
    @like.user_id = @user.id
    @like.video_id = @video.id
    respond_to do |format|
      if @like.save
        format.html { redirect_to([@client,@video,@like], :notice => 'like was successfully created.') }
        format.xml  { render :xml => @like, :status => :created, :location => @like }
        format.json { render :json => @like.attributes, :status => :created, :callback => params[:callback]}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @like.errors, :status => :unprocessable_entity }
        format.json { render :json => @like.attributes.merge({:errors => @like.errors}), :callback => params[:callback], :status => :unprocessable_entity}
      end
    end
  end


  # DELETE /clients/likes/1
  # DELETE /clients/likes/1.xml
  def destroy
    #since there is only one unique like record per @user, we can find it without passing the like.id from params
    @like = Like.where(:user_id => @user.id, :video_id => @video.id).first
    begin
      @like.destroy
      respond_to do |format|
        format.html { redirect_to(client_video_likes_path(@video)) }
        format.xml  { head :ok }
        format.json { render :json => {:deleted => true}, :status => :ok}
      end
    rescue => e
       respond_to do |format|
        format.json { render :json => {:errors => e.to_s}, :status => :unprocessable_entity}
      end

    end
  end
end
