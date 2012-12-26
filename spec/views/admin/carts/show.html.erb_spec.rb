require 'spec_helper'

describe "admin/carts/show" do
  before(:each) do
    @admin_cart = assign(:admin_cart, stub_model(Admin::Cart))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
  end
end
