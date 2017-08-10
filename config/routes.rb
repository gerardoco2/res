Rails.application.routes.draw do
  resources :ciudads
  resources :estados
  resources :properties
  resources :owners do
    resources :properties
  end


  resources :tipo_props
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get "home/index"
  get "home/minor"
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root to: 'home#index'
end
