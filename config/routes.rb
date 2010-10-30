Microblog::Application.routes.draw do
  match '/', :to => 'pages#home'
end
