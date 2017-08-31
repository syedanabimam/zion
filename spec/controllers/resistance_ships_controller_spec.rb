require 'rails_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

RSpec.describe ResistanceShipsController, :type => :controller do

  # This should return the minimal set of attributes required to create a valid
  # ResistanceShip. As you add validations to ResistanceShip, be sure to
  # adjust the attributes here as well.
  let(:valid_attributes) {
    skip("Add a hash of attributes valid for your model")
  }

  let(:invalid_attributes) {
    skip("Add a hash of attributes invalid for your model")
  }

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # ResistanceShipsController. Be sure to keep this updated too.
  let(:valid_session) { {} }

  describe "GET index" do
    it "assigns all resistance_ships as @resistance_ships" do
      resistance_ship = ResistanceShip.create! valid_attributes
      get :index, {}, valid_session
      expect(assigns(:resistance_ships)).to eq([resistance_ship])
    end
  end

  describe "GET show" do
    it "assigns the requested resistance_ship as @resistance_ship" do
      resistance_ship = ResistanceShip.create! valid_attributes
      get :show, {:id => resistance_ship.to_param}, valid_session
      expect(assigns(:resistance_ship)).to eq(resistance_ship)
    end
  end

  describe "GET new" do
    it "assigns a new resistance_ship as @resistance_ship" do
      get :new, {}, valid_session
      expect(assigns(:resistance_ship)).to be_a_new(ResistanceShip)
    end
  end

  describe "GET edit" do
    it "assigns the requested resistance_ship as @resistance_ship" do
      resistance_ship = ResistanceShip.create! valid_attributes
      get :edit, {:id => resistance_ship.to_param}, valid_session
      expect(assigns(:resistance_ship)).to eq(resistance_ship)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new ResistanceShip" do
        expect {
          post :create, {:resistance_ship => valid_attributes}, valid_session
        }.to change(ResistanceShip, :count).by(1)
      end

      it "assigns a newly created resistance_ship as @resistance_ship" do
        post :create, {:resistance_ship => valid_attributes}, valid_session
        expect(assigns(:resistance_ship)).to be_a(ResistanceShip)
        expect(assigns(:resistance_ship)).to be_persisted
      end

      it "redirects to the created resistance_ship" do
        post :create, {:resistance_ship => valid_attributes}, valid_session
        expect(response).to redirect_to(ResistanceShip.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved resistance_ship as @resistance_ship" do
        post :create, {:resistance_ship => invalid_attributes}, valid_session
        expect(assigns(:resistance_ship)).to be_a_new(ResistanceShip)
      end

      it "re-renders the 'new' template" do
        post :create, {:resistance_ship => invalid_attributes}, valid_session
        expect(response).to render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      let(:new_attributes) {
        skip("Add a hash of attributes valid for your model")
      }

      it "updates the requested resistance_ship" do
        resistance_ship = ResistanceShip.create! valid_attributes
        put :update, {:id => resistance_ship.to_param, :resistance_ship => new_attributes}, valid_session
        resistance_ship.reload
        skip("Add assertions for updated state")
      end

      it "assigns the requested resistance_ship as @resistance_ship" do
        resistance_ship = ResistanceShip.create! valid_attributes
        put :update, {:id => resistance_ship.to_param, :resistance_ship => valid_attributes}, valid_session
        expect(assigns(:resistance_ship)).to eq(resistance_ship)
      end

      it "redirects to the resistance_ship" do
        resistance_ship = ResistanceShip.create! valid_attributes
        put :update, {:id => resistance_ship.to_param, :resistance_ship => valid_attributes}, valid_session
        expect(response).to redirect_to(resistance_ship)
      end
    end

    describe "with invalid params" do
      it "assigns the resistance_ship as @resistance_ship" do
        resistance_ship = ResistanceShip.create! valid_attributes
        put :update, {:id => resistance_ship.to_param, :resistance_ship => invalid_attributes}, valid_session
        expect(assigns(:resistance_ship)).to eq(resistance_ship)
      end

      it "re-renders the 'edit' template" do
        resistance_ship = ResistanceShip.create! valid_attributes
        put :update, {:id => resistance_ship.to_param, :resistance_ship => invalid_attributes}, valid_session
        expect(response).to render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested resistance_ship" do
      resistance_ship = ResistanceShip.create! valid_attributes
      expect {
        delete :destroy, {:id => resistance_ship.to_param}, valid_session
      }.to change(ResistanceShip, :count).by(-1)
    end

    it "redirects to the resistance_ships list" do
      resistance_ship = ResistanceShip.create! valid_attributes
      delete :destroy, {:id => resistance_ship.to_param}, valid_session
      expect(response).to redirect_to(resistance_ships_url)
    end
  end

end