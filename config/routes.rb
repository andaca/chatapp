Rails.application.routes.draw do
  resources :users, :messages
  #get 'users/new' => 'users#new'
  post 'users/new' => 'users#create'
  post 'messages/new' => 'messages#create'
  #get 'users/show/:id' => 'users#show'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
