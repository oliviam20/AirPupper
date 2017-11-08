Rails.application.routes.draw do
  devise_for :users, controllers: {
        registrations: 'registrations'
      }

  resources :dogs
  root 'dogs#index'

  resources :conversations do
    resources :messages
  end

  resources :charges

  # devise_for :users

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
