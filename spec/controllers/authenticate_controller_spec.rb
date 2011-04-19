require 'spec_helper'

describe AuthenticateController do

  describe "GET 'login'" do
    it "should be successful" do
      get 'login'
      response.should be_success
    end
  end

  describe "GET 'intranet_login'" do
    it "should be successful" do
      get 'intranet_login'
      response.should be_success
    end
  end

  describe "GET 'logout'" do
    it "should be successful" do
      get 'logout'
      response.should be_success
    end
  end

end
