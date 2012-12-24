require 'spec_helper'

describe "admin/orders/index" do
  before(:each) do
    assign(:admin_orders, [
      stub_model(Admin::Order),
      stub_model(Admin::Order)
    ])
  end

  it "renders a list of admin/orders" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
