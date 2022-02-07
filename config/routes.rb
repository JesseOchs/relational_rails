Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/planets', to: 'planets#index'
  get '/planets/:id', to: 'planets#show'

  get '/satellites', to: 'satellites#index'
  get '/satellites/:id', to: 'satellites#show'

end
