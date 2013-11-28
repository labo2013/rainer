require "spec_helper"

describe SoldiersController do
  describe "routing" do

    it "routes to #index" do
      get("/soldiers").should route_to("soldiers#index")
    end

    it "routes to #new" do
      get("/soldiers/new").should route_to("soldiers#new")
    end

    it "routes to #show" do
      get("/soldiers/1").should route_to("soldiers#show", :id => "1")
    end

    it "routes to #edit" do
      get("/soldiers/1/edit").should route_to("soldiers#edit", :id => "1")
    end

    it "routes to #create" do
      post("/soldiers").should route_to("soldiers#create")
    end

    it "routes to #update" do
      put("/soldiers/1").should route_to("soldiers#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/soldiers/1").should route_to("soldiers#destroy", :id => "1")
    end

  end
end
