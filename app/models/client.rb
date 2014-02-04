class Client < ActiveRecord::Base
  has_many :videos, :dependent => :destroy
  has_many :users, :dependent => :destroy
  has_many :content_assets, :dependent => :destroy

  before_create do
    self.handle = self.company_name.downcase.gsub(/[^a-zA-Z0-9]/,'_')
  end

  def to_param
    self.handle
  end



end
