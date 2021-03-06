class CommentsController < ApplicationController
  # GET /clients/comments
  # GET /clients/comments.xml
 # before_filter :find_client
 # load_and_authorize_resource :client
  load_resource :client, :find_by => :handle
  authorize_resource :client

  load_and_authorize_resource :video, :through => :client
  load_and_authorize_resource :comment, :through => :video, :only => [:show, :destory,:update, :edit]
  before_filter :find_user
  
  def find_user
    @user = current_user
  end 

  def index

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comments }
      format.json
    end
  end

  # GET /clients/comments/1
  # GET /clients/comments/1.xml
  def show

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comment }
      format.json
    end
  end

  # GET /clients/comments/new
  # GET /clients/comments/new.xml
  def new
    @comment = @video.comments.build(:user_id => @user.id)

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comment }
      format.json
    end
  end

  # GET /clients/comments/1/edit
  def edit
  end

  # POST /clients/comments
  # POST /clients/comments.xml
  def create
    @comment = @video.comments.build(params[:comment])
    @comment.user_id = @user.id
    @comment.video_id = @video.id
    respond_to do |format|
      if @comment.save
        format.html { redirect_to([@client,@video,@comment], :notice => 'Comment was successfully created.') }
        format.xml  { render :xml => @comment, :status => :created, :location => @comment }
        format.json { render :json => @comment.attributes, :status => :created}
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
        format.json { render :json => @comment.attributes.merge({:errors => @comment.errors}), :status => :unprocessable_entity}
      end
    end
  end

  # PUT /clients/comments/1
  # PUT /clients/comments/1.xml
  def update
    @comment = @video.comments.find(params[:id])

    respond_to do |format|
      if @comment.update_attributes(params[:comment])
        format.html { redirect_to([@client,@video,@comment], :notice => 'Comment was successfully updated.') }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comment.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /clients/comments/1
  # DELETE /clients/comments/1.xml
  def destroy
    @comment.destroy

    respond_to do |format|
      format.html { redirect_to(client_video_comments_path(@video)) }
      format.xml  { head :ok }
    end
  end
end
