class UsersController < ApplicationController

  #ここから手動で追記(5章)==============================
  def show
    @user = User.find(params[:id])   #諸々の情報を保持しているのはこっち。そのため、attachment_image_tagで指定するのはこの変数となる。
    @post_images = @user.post_images.page(params[:page]).reverse_order #5つの投稿まで表示するようにページング&自分の投稿のみを表示。

  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  private

  def user_params
    params.require(:user).permit(:name, :profile_image)
  end

  #ここまで手動で追記(5章)==============================
end
