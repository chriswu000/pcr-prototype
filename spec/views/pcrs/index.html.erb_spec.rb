require 'spec_helper'

describe "pcrs/index.html.erb" do
  before(:each) do
    assign(:pcrs, [
      stub_model(Pcr,
        :pcr_number => "Pcr Number"
      ),
      stub_model(Pcr,
        :pcr_number => "Pcr Number"
      )
    ])
  end

  it "renders a list of pcrs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Pcr Number".to_s, :count => 2
  end
end
