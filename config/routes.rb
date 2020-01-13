Rails.application.routes.draw do

  root :to => 'session#new'

  # get 'session/new'
  # Session (login form/form submit/logout) routes:
  get '/login' => 'session#new' #login form
  post '/login' => 'session#create' #form submit, check credentials, create session
  delete '/login' => 'session#destroy' #logout (delete session)

  resources :users

end
