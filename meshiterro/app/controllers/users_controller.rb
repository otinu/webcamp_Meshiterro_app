class UsersController < ApplicationController

  #ここから手動で追記(5章)==============================
  def show
    @user = User.find(params[:id])
    @post_images = @user.post_images.page(params[:page]).reverse_order #5つの投稿まで表示するようにページング&自分の投稿のみを

  end

  #ここまで手動で追記(5章)==============================
end
