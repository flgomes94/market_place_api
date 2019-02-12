MarketPlaceApi::Application.routes.draw do
  #api definition
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api'}, path: '/' do
    #lista de recursos aqui

  end
end
