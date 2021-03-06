Rails.application.routes.draw do
  
  get '/login', to: 'users#login'

  get 'users', to: 'users#index'
  get 'users/:id', to: 'users#show'
  patch 'users/:id', to: 'users#update'
  
  post 'boards', to: 'boards#create'
  patch 'boards/:id', to: 'boards#update'
  get 'boards/:id', to: 'boards#show'
  delete 'boards/:id', to: 'boards#destroy'
  
  post 'user_boards', to: 'user_boards#create'
  patch 'user_boards/:id', to: 'user_boards#update'

end
