require 'spec_helper'

describe "admin/orders/edit" do
  before(:each) do
    @admin_order = assign(:admin_order, stub_model(Admin::Order))
  end

  it "renders the edit admin_order form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_orders_path(@admin_order), :method => "post" do
    end
  end
end
