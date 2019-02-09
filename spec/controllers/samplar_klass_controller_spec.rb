describe Samplar::SamplarKlassController, type: :controller do
  routes { Samplar::Engine.routes }

  describe "POST /samplar/:client/self/:method" do
    before do
      post :create, { client: 'client', method: 'foo' }
    end

    it { expect(response).to have_http_status(200) }
    it { expect(assigns(:result)).to eq Client.foo }
  end
end
