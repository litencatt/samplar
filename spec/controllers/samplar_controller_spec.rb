describe Samplar::SamplarController, type: :controller do
  routes { Samplar::Engine.routes }
  describe "GET /samplar" do
    it "works! (now write some real specs)" do
      get :index
      expect(response).to have_http_status(200)
    end
  end
end
