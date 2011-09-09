class Client < ActiveRecord::Base
  has_many :videos
  has_many :users
  has_many :content_assets

  before_create do
    self.handle = self.company_name.downcase.gsub(/[^a-zA-Z0-9]/,'_')
  end

  def to_param
    self.handle
  end



end
