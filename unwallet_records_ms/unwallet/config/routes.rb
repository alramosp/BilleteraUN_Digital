Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  get "/record_types", to: "record_types#index"

  get '/record_types/new', to: 'record_types#new'
  post '/record_types', to: 'record_types#create'
  get '/record_types/:id', to: 'record_types#show'
  get '/record_types/:id/edit', to: 'record_types#edit'
  patch '/record_types/:id', to: 'record_types#update'
  delete '/record_types/:id', to: 'record_types#destroy'

  get '/records', to: 'records#index'
  
  get '/records/new', to: 'records#new'
  post '/records', to: 'records#create'
  get '/records/:id', to: 'records#show'
  get '/records/:id/edit', to: 'records#edit'
  patch '/records/:id', to: 'records#update'
  delete '/records/:id', to: 'records#destroy'
end
