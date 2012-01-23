class Video < ActiveRecord::Base
  
  acts_as_taggable
#  acts_as_rateable

  belongs_to :client
  belongs_to :user
  has_many :comments
  has_many :likes

  if Rails.env.to_s == "production"

    define_index do
      has client_id, user_id
      indexes title
      indexes location
      indexes description
      indexes participants
      indexes comments.body, :as => :comment_body
      indexes user.username, :as => :user_username
    end

  else
    #hack for developing locally without the need for sphinx installed
    def self.search(terms)
      Video.where("title ILIKE :search",{:search => "%#{terms}%"})
    end

  end


end
