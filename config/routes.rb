Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'welcome#index'

  get '/mountains', to: 'mountains#index'
  get '/mountainranges', to: 'mountain_ranges#index'
  get '/mountainranges/:id', to: 'mountain_ranges#show'
end
