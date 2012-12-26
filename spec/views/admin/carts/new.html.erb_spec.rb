require 'spec_helper'

describe "admin/carts/new" do
  before(:each) do
    assign(:admin_cart, stub_model(Admin::Cart).as_new_record)
  end

  it "renders new admin_cart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_carts_path, :method => "post" do
    end
  end
end
