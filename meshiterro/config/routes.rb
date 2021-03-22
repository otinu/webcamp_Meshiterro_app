Rails.application.routes.draw do
  #ここから手動で追記(3章)================================
  # 『root to: 'homes#top'』がないとTop画面がおかしくなり、あるとページング機能が働かず、2ページ目に移動しようとすると、Topページへ移行してしまう。
  devise_for :users
  root 'post_images#index'

  #ここから手動で追記(4章)===============================
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do

    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  #ここまで手動で追記(3章)================================

end
