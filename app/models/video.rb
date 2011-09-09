class Video < ActiveRecord::Base
  
  acts_as_taggable
  acts_as_rateable

  belongs_to :client
  belongs_to :user
  has_many :comments

end
