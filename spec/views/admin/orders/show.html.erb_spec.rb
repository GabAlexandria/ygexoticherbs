require 'spec_helper'

describe "admin/orders/show" do
  before(:each) do
    @admin_order = assign(:admin_order, stub_model(Admin::Order))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
