Samplar::Engine.routes.draw do
  get  '/',                      to: 'samplar#index'
  get  '/:client/:method',       to: 'samplar#show'
  post '/:client/:method',       to: 'samplar#create'
  get  '/:client/self/:method',  to: 'samplar_klass#show'
  post '/:client/self/:method/', to: 'samplar_klass#create'
end
