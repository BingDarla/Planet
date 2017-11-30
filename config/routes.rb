Rails.application.routes.draw do


  root :to =>'pages#home'
  get '/login' => 'session#new'
  post '/login' => 'session#create'
  delete '/login' => 'session#destroy'

  resources :users, :only =>[:index, :new, :create,:edit,:update] do
    resources :triplists
  end

  delete '/users/:user_id/triplists/:id' => 'triplists#destroy', as: 'delete_user_triplist' 

  get '/users/:user_id/triplists/:triplist_id/add/:sight_id'  => 'triplists#add' , as: 'triplist_add'
  delete '/users/:user_id/triplists/:triplist_id/remove/:sight_id' =>'triplists#remove',as: 'triplist_remove'


  resources :countries, :only =>[:index, :show] do
    resources :sights do
      resources :comments, :only=>[:new, :create,:delete]
    end
  end







  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
