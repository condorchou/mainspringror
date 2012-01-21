object Video.includes(:comments => :user).where(:id => @video)
  attributes :id, :title, :botr_video_key, :location, :description, 
  :season, :episode, :label, :participants, :release_date, :approved, :botr_video_key,
  :views, :tab_highlight



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
