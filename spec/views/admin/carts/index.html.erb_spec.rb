require 'spec_helper'

describe "admin/carts/index" do
  before(:each) do
    assign(:admin_carts, [
      stub_model(Admin::Cart),
      stub_model(Admin::Cart)
    ])
  end

  it "renders a list of admin/carts" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
