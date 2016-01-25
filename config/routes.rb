Rails.application.routes.draw do
  root to: 'products#index'

  get '/products', to: 'products#index', as: 'products'
  get '/products/new', to: 'products#new', as: 'new_product'
end
