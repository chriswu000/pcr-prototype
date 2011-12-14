require "spec_helper"

describe DispatchesController do
  describe "routing" do

    it "routes to #index" do
      get("/dispatches").should route_to("dispatches#index")
    end

    it "routes to #new" do
      get("/dispatches/new").should route_to("dispatches#new")
    end

    it "routes to #show" do
      get("/dispatches/1").should route_to("dispatches#show", :id => "1")
    end

    it "routes to #edit" do
      get("/dispatches/1/edit").should route_to("dispatches#edit", :id => "1")
    end

    it "routes to #create" do
      post("/dispatches").should route_to("dispatches#create")
    end

    it "routes to #update" do
      put("/dispatches/1").should route_to("dispatches#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/dispatches/1").should route_to("dispatches#destroy", :id => "1")
    end

  end
end
