Rails.application.routes.draw do
  resources :products
  #delete "products/:id", to: "products#delete", as: "delete_product"
  resources :categories
  resources :sellers
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
