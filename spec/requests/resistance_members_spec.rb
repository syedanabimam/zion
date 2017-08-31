require 'rails_helper'

RSpec.describe "ResistanceMembers", :type => :request do
  describe "GET /resistance_members" do
    it "works! (now write some real specs)" do
      get resistance_members_path
      expect(response).to have_http_status(200)
    end
  end
end
