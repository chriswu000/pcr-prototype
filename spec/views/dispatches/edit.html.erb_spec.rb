require 'spec_helper'

describe "dispatches/edit.html.erb" do
  before(:each) do
    @dispatch = assign(:dispatch, stub_model(Dispatch,
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => "MyString",
      :pcr_id => 1
    ))
  end

  it "renders the edit dispatch form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => dispatches_path(@dispatch), :method => "post" do
      assert_select "input#dispatch_address", :name => "dispatch[address]"
      assert_select "input#dispatch_city", :name => "dispatch[city]"
      assert_select "input#dispatch_state", :name => "dispatch[state]"
      assert_select "input#dispatch_zip", :name => "dispatch[zip]"
      assert_select "input#dispatch_pcr_id", :name => "dispatch[pcr_id]"
    end
  end
end
