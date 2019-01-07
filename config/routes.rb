Rails.application.routes.draw do

  as :user do
    get 'connexion', to: 'devise/sessions#new', as: :new_user_session
    post 'connexion', to: 'devise/sessions#create', as: :user_session
    delete 'deconexion', to: 'devise/sessions#destroy', as: :destroy_user_session
    get 'inscription', to: 'devise/registrations#new', as: :new_user_registration
    post 'inscription', to: 'devise/registrations#create', as: 'user_registration'
  end
  devise_for :users, skip: [:sessions]

  root to: "home#index"
end
