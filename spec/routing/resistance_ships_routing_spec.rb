require "rails_helper"

RSpec.describe ResistanceShipsController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resistance_ships").to route_to("resistance_ships#index")
    end

    it "routes to #new" do
      expect(:get => "/resistance_ships/new").to route_to("resistance_ships#new")
    end

    it "routes to #show" do
      expect(:get => "/resistance_ships/1").to route_to("resistance_ships#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resistance_ships/1/edit").to route_to("resistance_ships#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resistance_ships").to route_to("resistance_ships#create")
    end

    it "routes to #update" do
      expect(:put => "/resistance_ships/1").to route_to("resistance_ships#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resistance_ships/1").to route_to("resistance_ships#destroy", :id => "1")
    end

  end
end
