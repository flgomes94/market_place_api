require 'api_constraints'
MarketPlaceApi::Application.routes.draw do
  devise_for :users
  #api definition
  namespace :api, defaults: { format: :json }, constraints: { subdomain: 'api'}, path: '/' do
    #lista de recursos aqui
    scope module: :v1, constraints: ApiConstraints.new(version: 1, default:true) do
    end
  end
end
