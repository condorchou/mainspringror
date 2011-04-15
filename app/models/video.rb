class Video < ActiveRecord::Base
  acts_as_taggable

  belongs_to :client
  belongs_to :user
end
