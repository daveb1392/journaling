Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

 root 'pages#index'
 get '/about', to: 'pages#about' 
 get "/signup", to: "users#new", as: "new_user"
 get '/login', to: 'sessions#new', as: "login_user"
 post '/login/', to: 'sessions#create'
 delete '/sessions', to: 'sessions#destroy', as: "logout"
 
 
 resources :journals
 
 
 resources :users, except: [:new]
 resources :meditations, only: [:index, :show]




end
