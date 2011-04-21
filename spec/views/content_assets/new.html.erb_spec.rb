require 'spec_helper'

describe "content_assets/new.html.erb" do
  before(:each) do
    assign(:content_asset, stub_model(ContentAsset).as_new_record)
  end

  it "renders new content_asset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => content_assets_path, :method => "post" do
    end
  end
end
