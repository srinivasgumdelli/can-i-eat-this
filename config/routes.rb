Rails.application.routes.draw do
  resources :recommendations, :path => '/', :only => [:index]

  resources :codes

  resources :ingredients

  resources :conditions
end
