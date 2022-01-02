Rails.application.routes.draw do
  
  resources :hotels do 
    resources :rooms, only: %i[create destroy]
  end

  root 'hotels#index'
end
