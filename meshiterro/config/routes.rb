Rails.application.routes.draw do
  #5章にて『get 'users/show'』は削除

  #ここから手動で追記(3章)================================
  # 『root to: 'homes#top'』がないとTop画面がおかしくなり、あるとページング機能が働かず、2ページ目に移動しようとすると、Topページへ移行してしまう。
  devise_for :users
  root 'post_images#index'

  #ここから手動で追記(4章)===============================
  resources :post_images, only: [:new, :create, :index, :show, :destroy] do

    resource :favorites, only: [:create, :destroy]
    resources :post_comments, only: [:create, :destroy]
  end

  #ここから手動で追記(5章)================================
  resources :users, only: [:show, :edit, :update]

  #ここまで手動で追記=====================================
  #上記のdevise_for :usersは2章でdeviseコマンド入力時に自動で生成されたもの。一方で5章で作成したresources :usersはコントローラやアクションも手動で定義した。
  #つまり、2章で作ったdeviseのUserモデルと5章で作ったUsersコントローラやアクションはまったく別物。

end
