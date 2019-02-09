Samplar::Engine.routes.draw do
  get  '/',                      to: 'samplar#index'
  get  '/:client/:method',       to: 'instance_methods#show'
  post '/:client/:method',       to: 'instance_methods#create'
  get  '/:client/self/:method',  to: 'class_methods#show'
  post '/:client/self/:method/', to: 'class_methods#create'
end
