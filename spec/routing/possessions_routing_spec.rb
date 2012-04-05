require "spec_helper"

describe PossessionsController do
  describe "routing" do

    it "routes to #index" do
      get("/possessions").should route_to("possessions#index")
    end

    it "routes to #new" do
      get("/possessions/new").should route_to("possessions#new")
    end

    it "routes to #show" do
      get("/possessions/1").should route_to("possessions#show", :id => "1")
    end

    it "routes to #edit" do
      get("/possessions/1/edit").should route_to("possessions#edit", :id => "1")
    end

    it "routes to #create" do
      post("/possessions").should route_to("possessions#create")
    end

    it "routes to #update" do
      put("/possessions/1").should route_to("possessions#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/possessions/1").should route_to("possessions#destroy", :id => "1")
    end

  end
end
