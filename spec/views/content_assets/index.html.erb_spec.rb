require 'spec_helper'

describe "content_assets/index.html.erb" do
  before(:each) do
    assign(:content_assets, [
      stub_model(ContentAsset),
      stub_model(ContentAsset)
    ])
  end

  it "renders a list of content_assets" do
    render
  end
end
