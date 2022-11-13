Rails.application.routes.draw do
  resources :leases, only: [:create, :destroy]
  resources :apartments
  resources :tenants
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
