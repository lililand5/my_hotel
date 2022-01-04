Rails.application.routes.draw do
  resource :session, only: %i[new create destroy]
  resources :users, only: %i[new create edit update]

  resources :hotels do 
    resources :rooms
  end

  root 'hotels#index'
end
