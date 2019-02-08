Samplar::Engine.routes.draw do
  get  '/',                to: 'samplar#index'
  get  '/:client/:method', to: 'samplar#show'
  post '/:client/:method', to: 'samplar#create'
end
