Rails.application.routes.draw do
  get 'sights/edit'

  get 'sights/new'

  get 'sights/show'

  get 'sights/delete'

  get 'triplists/edit'

  get 'triplists/show'

  root :to =>'pages#home'
  resources :users, :only =>[:index, :new, :create,:edit,:update]

  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'



  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
