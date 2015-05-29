Rails.application.routes.draw do
  root 'recommendations#index'
  
  resources :recommendations

  resources :codes

  resources :ingredients

  resources :conditions
end
