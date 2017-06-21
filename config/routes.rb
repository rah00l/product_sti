Rails.application.routes.draw do

  resources :products
  resources :pens, controller: "products", type: "Pen"
  resources :notebooks, controller: "products", type: "Notebook"
  root to: 'products#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
