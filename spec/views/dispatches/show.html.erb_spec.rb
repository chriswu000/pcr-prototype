require 'spec_helper'

describe "dispatches/show.html.erb" do
  before(:each) do
    @dispatch = assign(:dispatch, stub_model(Dispatch,
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => "Zip",
      :pcr_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Address/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/City/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/State/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Zip/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
