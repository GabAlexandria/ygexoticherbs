require 'spec_helper'

describe "admin/carts/edit" do
  before(:each) do
    @admin_cart = assign(:admin_cart, stub_model(Admin::Cart))
  end

  it "renders the edit admin_cart form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => admin_carts_path(@admin_cart), :method => "post" do
    end
  end
end
