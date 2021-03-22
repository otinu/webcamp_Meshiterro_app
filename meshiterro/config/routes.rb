Rails.application.routes.draw do
  #ここから手動で追記(3章)================================
  root to: 'homes#top'
  root 'post_images#index'
  devise_for :users

  resources :post_images, only: [:new, :create, :index, :show, :destroy]

  #ここまで手動で追記(3章)================================

end
