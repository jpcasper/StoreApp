Rails.application.routes.draw do
  devise_for :users
  root to: 'items#index'
 
  get '/items' => 'items#index'
  get '/items/random' => 'items#random'
  get '/items/new' => 'items#new'
  post '/items' => 'items#create'

  get '/items/:id' => 'items#show'

  get '/items/:id/edit' => 'items#edit'
  patch '/items/:id' => 'items#update'

  delete '/items/:id' => 'items#destroy'

  post '/orders' => 'orders#create'
  get '/orders/:id' => 'orders#show'

   get '/carted_products' => 'carted_products#index'

  # get '/carted_products/new' => 'carted_products#new'
   post '/carted_products' => 'carted_products#create'

  # get '/carted_products/:id' => 'carted_products#show'

  # get '/carted_products/:id/edit' => 'carted_products#edit'
  # patch '/carted_products/:id' => 'carted_products#update'

  delete '/carted_products/:id' => 'carted_products#destroy'




end
