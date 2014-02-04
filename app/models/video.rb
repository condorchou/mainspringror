class Video < ActiveRecord::Base
  
  acts_as_taggable
#  acts_as_rateable

  belongs_to :client
  belongs_to :user
  has_many :comments, :order => "id DESC"
  has_many :likes

  if Rails.env.to_s == "production"

    define_index do
      has client_id, user_id
      indexes title
      indexes location
      indexes description
      indexes participants
      indexes cached_tag_list
      indexes comments.body, :as => :comment_body
      indexes user.username, :as => :user_username
    end

  else
    #hack for developing locally without the need for sphinx installed
    def self.search(terms)
      if ActiveRecord::Base.configurations[Rails.env]['adapter'] == "postgresql"
        Video.where("title ILIKE :search",{:search => "%#{terms}%"})
      else
        Video.where("title LIKE :search",{:search => "%#{terms}%"})
      end
    end

  end

  def featured_as
    if self.id == self.client.primary_video_id
      "Primary"
    elsif self.id == self.client.secondary_video_id
      "Secondary"
    else
      "None"
    end
  end

  def featured_as=(feature_type)
    c = self.client

    if feature_type == "Primary"
      c.primary_video_id = self.id
      c.secondary_video_id = nil if c.secondary_video_id == c.primary_video_id
    elsif feature_type == "Secondary"
      c.secondary_video_id = self.id
      c.primary_video_id = nil if c.primary_video_id == c.secondary_video_id
    elsif feature_type == "None"
      c.primary_video_id = nil if c.primary_video_id == self.id
      c.secondary_video_id = nil if c.secondary_video_id == self.id
    end
    c.save!

  end



end
