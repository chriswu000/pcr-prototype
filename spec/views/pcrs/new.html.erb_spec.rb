require 'spec_helper'

describe "pcrs/new.html.erb" do
  before(:each) do
    assign(:pcr, stub_model(Pcr,
      :pcr_number => "MyString"
    ).as_new_record)
  end

  it "renders new pcr form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pcrs_path, :method => "post" do
      assert_select "input#pcr_pcr_number", :name => "pcr[pcr_number]"
    end
  end
end
