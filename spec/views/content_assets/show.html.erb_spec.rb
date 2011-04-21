require 'spec_helper'

describe "content_assets/show.html.erb" do
  before(:each) do
    @content_asset = assign(:content_asset, stub_model(ContentAsset))
  end

  it "renders attributes in <p>" do
    render
  end
end
