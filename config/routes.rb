Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  # Parent
  get '/planets', to: 'planets#index'
  get '/planets/new', to: 'planets#new'
  get '/planets/:id', to: 'planets#show'
  get '/planets/:id/edit', to: 'planets#edit'

  post '/planets', to: 'planets#create'

  patch '/planets/:id', to: 'planets#update'

  delete '/planets/:id', to: 'planets#destroy'

  # Child
  get '/satellites', to: 'satellites#index'
  get '/satellites/:id', to: 'satellites#show'
  get '/satellites/:id/edit', to: 'satellites#edit'

  patch '/satellites/:id', to: 'satellites#update'

  delete '/satellites/:id', to: 'satellites#destroy'

  # Nested Children
  get '/planets/:id/satellites', to: 'planet_satellites#index'
  get '/planets/:id/satellites/new', to: 'planet_satellites#new'
  get '/planets/:id/satellites/:satellite_id', to: 'planet_satellites#show'
  get '/planets/:id/satellites/:satellite_id/edit', to: 'planet_satellites#edit'

  post '/planets/:id/satellites', to: 'planet_satellites#create'

  patch '/planets/:id/satellites/:satellite_id', to: 'planet_satellites#update'

  delete '/planets/:id/satellites/:satellite_id', to: 'planet_satellites#destroy'
end
