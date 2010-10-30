Microblog::Application.routes.draw do
  resources :users
  match '/signup',  :to => 'users#new'
  
  root :to => 'pages#home'
end
