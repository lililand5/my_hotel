Rails.application.routes.draw do
  
  resources :users

  resources :hotels do 
    resources :rooms
  end

  root 'hotels#index'
end
