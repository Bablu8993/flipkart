Rails.application.routes.draw do
  post 'user_token' => 'user_token#create'

  post  '/category/create' =>'categories#create'
  get '/categories' => 'categories#index'
  get '/items' => 'items#index'

  post  '/item/create' =>'items#create'

  # Home controller routes.
  root   'home#index'
  get    'auth'            => 'home#auth'
  
  # User actions
  get    '/users'          => 'users#index'
  get    '/users/current'  => 'users#current'
  post   '/users/create'   => 'users#create'
  patch  '/user/:id'       => 'users#update'
  delete '/user/:id'       => 'users#destroy'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
