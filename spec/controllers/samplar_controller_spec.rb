describe Samplar::SamplarController, type: :controller do
  routes { Samplar::Engine.routes }

  describe "GET /samplar" do
    before { get :index }
    it { expect(response).to have_http_status(200) }
  end

  describe "GET /samplar/:client/:method" do
    before do
      get :show, { client: 'client', method: 'foo' }
    end

    it { expect(response).to have_http_status(200) }
  end

  describe "POST /samplar/:client/:method" do
    before do
      post :create, { client: 'client', method: 'foo' }
    end

    it { expect(response).to have_http_status(200) }
  end
end
