class Client < ActiveRecord::Base
  has_many :videos
  has_many :users
  has_many :content_assets
end
