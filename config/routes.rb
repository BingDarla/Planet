Rails.application.routes.draw do


  root :to =>'pages#home'
  resources :users, :only =>[:index, :new, :create,:edit,:update]
  get 'triplists/edit'
  get 'triplists/show'



  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'
  resources :countries, :only =>[:index, :show]

  resources :sights, :only =>[:new, :create, :edit, :update, :show, :delete]







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
