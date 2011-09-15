require 'spec_helper'

describe VideosController do

  describe "if given invalid video ID" do
    it "should redirect to primary video if there is one"
    it "should redirect to videos list if there is not one"    
  end

  describe "auto login" do
    it "should create the client user if it does not yet exist"
  end

end
