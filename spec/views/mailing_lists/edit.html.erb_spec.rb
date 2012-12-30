require 'spec_helper'

describe "mailing_lists/edit" do
  before(:each) do
    @mailing_list = assign(:mailing_list, stub_model(MailingList))
  end

  it "renders the edit mailing_list form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => mailing_lists_path(@mailing_list), :method => "post" do
    end
  end
end
