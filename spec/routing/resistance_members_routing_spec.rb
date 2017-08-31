require "rails_helper"

RSpec.describe ResistanceMembersController, :type => :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/resistance_members").to route_to("resistance_members#index")
    end

    it "routes to #new" do
      expect(:get => "/resistance_members/new").to route_to("resistance_members#new")
    end

    it "routes to #show" do
      expect(:get => "/resistance_members/1").to route_to("resistance_members#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/resistance_members/1/edit").to route_to("resistance_members#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/resistance_members").to route_to("resistance_members#create")
    end

    it "routes to #update" do
      expect(:put => "/resistance_members/1").to route_to("resistance_members#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/resistance_members/1").to route_to("resistance_members#destroy", :id => "1")
    end

  end
end
