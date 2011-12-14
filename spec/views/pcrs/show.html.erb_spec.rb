require 'spec_helper'

describe "pcrs/show.html.erb" do
  before(:each) do
    @pcr = assign(:pcr, stub_model(Pcr,
      :pcr_number => "Pcr Number"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Pcr Number/)
  end
end
