require 'spec_helper'

describe "admin/orders/new" do
  before(:each) do
    assign(:admin_order, stub_model(Admin::Order).as_new_record)
  end

  it "renders new admin_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_orders_path, :method => "post" do
    end
  end
end
