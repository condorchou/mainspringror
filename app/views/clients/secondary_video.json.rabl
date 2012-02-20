object Video.includes(:comments => :user).where(:id => @video)
  attributes :id, :title, :botr_video_key, :location, :description, 
  :participants, :release_date, :approved, :botr_video_key,
  :views, :likes_count

  code :tags do
    @video.tags.collect {|t| t.name}
  end


  child :comments do
    attribute :created_at
    attribute :body
    code :username do |c|
      c.user.username
    end
    code :location do |c|
      c.user.location
    end
  end
