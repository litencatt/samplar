describe Samplar::ClassMethodsController, type: :controller do
  routes { Samplar::Engine.routes }

  describe "POST /samplar/:client/self/:method" do
    context 'when call no args method' do
      before { post :create, { client: 'client', method: 'foo' } }

      it { expect(response).to have_http_status(200) }
      it { expect(assigns(:result)).to eq Client.foo }
    end

    context 'when call 2 args method' do
      before do
        post :create, {
          client: 'client',
          method: 'bar',
          args: {
            arg1: 'hello',
            arg2: 'world'
          }
        }
      end

      it { expect(response).to have_http_status(200) }
      it { expect(assigns(:result)).to eq Client.bar('hello', 'world') }
    end
  end
end
