Rails.application.routes.draw do
  resources :events
  resources :galleries
  resources :arts
  resources :customers
  resources :artists
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
