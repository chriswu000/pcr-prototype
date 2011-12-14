require "spec_helper"

describe PcrsController do
  describe "routing" do

    it "routes to #index" do
      get("/pcrs").should route_to("pcrs#index")
    end

    it "routes to #new" do
      get("/pcrs/new").should route_to("pcrs#new")
    end

    it "routes to #show" do
      get("/pcrs/1").should route_to("pcrs#show", :id => "1")
    end

    it "routes to #edit" do
      get("/pcrs/1/edit").should route_to("pcrs#edit", :id => "1")
    end

    it "routes to #create" do
      post("/pcrs").should route_to("pcrs#create")
    end

    it "routes to #update" do
      put("/pcrs/1").should route_to("pcrs#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/pcrs/1").should route_to("pcrs#destroy", :id => "1")
    end

  end
end
