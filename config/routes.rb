Rails.application.routes.draw do
  
  resources :hotels do 
    resources :rooms
  end

  root 'hotels#index'
end
