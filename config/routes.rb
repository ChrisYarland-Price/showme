Rails.application.routes.draw do
  resources :projects
  devise_for :spartans
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/u', to: 'spartans#index'
  get '/u/:id', to: 'spartans#show'

  root 'projects#home'

end
