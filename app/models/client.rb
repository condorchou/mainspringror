class Client < ActiveRecord::Base
  has_many :videos
  has_many :users
  has_many :content_assets

  before_create do
    self.handle = self.company_name.downcase.gsub(/[^a-zA-Z0-9]/,'-')
  end




end
