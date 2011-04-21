require "spec_helper"

describe ContentAssetsController do
  describe "routing" do

    it "recognizes and generates #index" do
      { :get => "/content_assets" }.should route_to(:controller => "content_assets", :action => "index")
    end

    it "recognizes and generates #new" do
      { :get => "/content_assets/new" }.should route_to(:controller => "content_assets", :action => "new")
    end

    it "recognizes and generates #show" do
      { :get => "/content_assets/1" }.should route_to(:controller => "content_assets", :action => "show", :id => "1")
    end

    it "recognizes and generates #edit" do
      { :get => "/content_assets/1/edit" }.should route_to(:controller => "content_assets", :action => "edit", :id => "1")
    end

    it "recognizes and generates #create" do
      { :post => "/content_assets" }.should route_to(:controller => "content_assets", :action => "create")
    end

    it "recognizes and generates #update" do
      { :put => "/content_assets/1" }.should route_to(:controller => "content_assets", :action => "update", :id => "1")
    end

    it "recognizes and generates #destroy" do
      { :delete => "/content_assets/1" }.should route_to(:controller => "content_assets", :action => "destroy", :id => "1")
    end

  end
end
