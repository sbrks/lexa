Rails.application.routes.draw do

get '/lawyers', to: 'lawyers#index'

get '/lawyers/:id', to: 'lawyers#show'



end
