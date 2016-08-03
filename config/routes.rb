Rails.application.routes.draw do
  #home page

  root to: "home#home"

  get '/', to: 'home#home', as: 'home'

  #about page
  get '/about', to: 'home#about', as: 'about'

  #signin/sessions

  get '/signin', to: 'sessions#new'

  #create a session
  post '/sessions', to: 'sessions#create'

  #delete session
  delete '/sessions', to: 'sessions#destroy'

  #contact form
  get '/contact', to: 'contact#index'



  resources :lawyers, :clients, :sessions, :blog



end
