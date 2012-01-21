class Like < ActiveRecord::Base

  belongs_to :user
  belongs_to :video
  validates_presence_of :user_id, :video_id
  validates_uniqueness_of :user_id, :scope => :video_id, :message => 'already liked' 

  after_create do
    Video.increment_counter(:likes_count,self.video_id)
  end
  after_destroy do
    Video.decrement_counter(:likes_count,self.video_id)
  end
end
