Rails.application.routes.draw do

  devise_for :users
  root 'hotels#index'
  get 'persons/profile', as: 'user_root'

  # get 'persons/profile', as: 'user_root'


  # resource :session, only: %i[new create destroy]
  # resources :users, only: %i[new create edit update]

  resources :hotels do 
    resources :rooms
     member do
      delete :purge_avatar
     end

      delete "attachements/:id/purge", to: "attachements#purge", as: "purge_attachement"
  end
  
  resources :rooms

  delete "attachements/:id/purge", to: "attachements#purge", as: "purge_attachement"
  
end
