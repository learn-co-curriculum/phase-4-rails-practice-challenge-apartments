Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  resources :apartments, only: [:show, :create, :update, :destroy]
  resources :tenants, only: [:show, :create, :update, :destroy]

  post 'lease', to: 'leases#create'
  delete 'lease', to: 'leases#destroy'
end
