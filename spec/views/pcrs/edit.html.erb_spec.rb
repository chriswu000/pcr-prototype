require 'spec_helper'

describe "pcrs/edit.html.erb" do
  before(:each) do
    @pcr = assign(:pcr, stub_model(Pcr,
      :pcr_number => "MyString"
    ))
  end

  it "renders the edit pcr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pcrs_path(@pcr), :method => "post" do
      assert_select "input#pcr_pcr_number", :name => "pcr[pcr_number]"
    end
  end
end
