Rails.application.routes.draw do

  #home page

  get '/', to: 'home#home', as: 'home'

  #about page
  get '/about', to: 'home#about', as: 'about'

  #signin/sessions
  get '/signin', to: 'sessions#new'

  #create a session
  post '/sessions', to: 'sessions#create'

  #delete session
  delete '/sessions', to: 'sessions#destroy'



  get '/lawyers', to: 'lawyers#index'

  get '/lawyers/new', to: 'lawyers#new'

  get '/lawyers/:id', to: 'lawyers#show'

  get '/clients', to: 'clients#index'

  get '/clients/new', to: 'clients#new'

  get '/clients/:id', to: 'clients#show'


  resources :lawyers, :clients



end
