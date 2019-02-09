describe Samplar::SamplarController, type: :controller do
  routes { Samplar::Engine.routes }

  describe "GET /samplar" do
    before { get :index }
    it { expect(response).to have_http_status(200) }
  end
end
