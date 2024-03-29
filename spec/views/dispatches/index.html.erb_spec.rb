require 'spec_helper'

describe "dispatches/index.html.erb" do
  before(:each) do
    assign(:dispatches, [
      stub_model(Dispatch,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :pcr_id => 1
      ),
      stub_model(Dispatch,
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => "Zip",
        :pcr_id => 1
      )
    ])
  end

  it "renders a list of dispatches" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "City".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "State".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Zip".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
