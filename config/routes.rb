Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      resources :products, only: [:show, :create, :update, :destroy, :index]
    end
    namespace :v1 do
      resources :users, only: [:show, :create, :update, :destroy, :index]
    end
  end
  
end
