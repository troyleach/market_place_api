require 'api_constraints'

MarketPlaceApi::Application.routes.draw do

  devise_for :users
  namespace :api, defaults: { format: :json } do
    
    scope module: :v1, 
      constraints: ApiConstraints.new(version: 1, default: true) do
      resources :users, :only => [:show, :create, :update, :destroy]
    end
  end
end
