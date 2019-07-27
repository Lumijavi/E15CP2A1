Rails.application.routes.draw do
  devise_for :users, controllers: {
    registrations: 'users/registrations'
  }

  resources :histories
  root "histories#index"

  get 'mystories', to: 'histories#mystories'
  get 'mystories/:username', to: 'histories#mystories_user', as: 'mystories_user'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
