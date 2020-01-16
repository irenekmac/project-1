Rails.application.routes.draw do

  root :to => 'session#new'

  # get 'session/new'
  # Session (login form/form submit/logout) routes:
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #form submit, check credentials, create session
  delete '/login' => 'session#destroy' #logout (delete session)


  post '/orders/:id/accept' => 'orders#accept', as:'order_accept' #

  resources :users

  resources :orders

  resources :comments

end
