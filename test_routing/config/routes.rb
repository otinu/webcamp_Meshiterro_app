Rails.application.routes.draw do
  
  namespace :admin do
    resources :items 
  end
  
  namespace :public do
    resources :items, only: [:show, :index, :edit,]
  end
end
