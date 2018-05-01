Rails.application.routes.draw do
  get 'movies/search'

  get '/lookout', to: 'movies#search'
  root 'movies#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
