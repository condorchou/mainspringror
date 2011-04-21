require 'spec_helper'

describe "content_assets/edit.html.erb" do
  before(:each) do
    @content_asset = assign(:content_asset, stub_model(ContentAsset))
  end

  it "renders the edit content_asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => content_assets_path(@content_asset), :method => "post" do
    end
  end
end
