Rails.application.routes.draw do
  root to: 'products#index'

  get '/products', to: 'products#index', as: 'products'
end
