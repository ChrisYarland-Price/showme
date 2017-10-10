Rails.application.routes.draw do
  devise_for :spartans
  resources :projects
  resources :spartans, only: [:index, :show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 
  get '/home', to: 'projects#home'
  # get '/u/:id', to: 'spartans#show'

  root 'projects#index'

end
