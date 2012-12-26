require "spec_helper"

describe Admin::CartsController do
  describe "routing" do

    it "routes to #index" do
      get("/admin/carts").should route_to("admin/carts#index")
    end

    it "routes to #new" do
      get("/admin/carts/new").should route_to("admin/carts#new")
    end

    it "routes to #show" do
      get("/admin/carts/1").should route_to("admin/carts#show", :id => "1")
    end

    it "routes to #edit" do
      get("/admin/carts/1/edit").should route_to("admin/carts#edit", :id => "1")
    end

    it "routes to #create" do
      post("/admin/carts").should route_to("admin/carts#create")
    end

    it "routes to #update" do
      put("/admin/carts/1").should route_to("admin/carts#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/admin/carts/1").should route_to("admin/carts#destroy", :id => "1")
    end

  end
end
