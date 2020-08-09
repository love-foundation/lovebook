require 'rails_helper'

RSpec.describe "Homes", type: :request do

  describe "GET /index" do
    it "redirects to sign in if not signed in" do
      get "/"
      expect(response).to have_http_status(:redirect)
    end
  end

end
