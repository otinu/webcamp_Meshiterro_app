class PostCommentsController < ApplicationController

#ここから手動で追記(4章)===========================================
  def create
    post_image = PostImage.find(params[:post_image_id])
    comment = current_user.post_comments.new(post_comment_params)
    comment.post_image_id = post_image.id
    comment.save
    redirect_to post_image_path(post_image)
    #1行目~4行目でローカル変数post_imageには新しい情報が追加&保存された状態となっている。この状態を引き継いだままリダイレクトしたいため、5行目で引数にpost_imageを指定。
  end

  def destroy
    PostComment.find_by(id: params[:id], post_image_id: params[:post_image_id]).destroy
    redirect_to post_image_path(params[:post_image_id])
  end

  private

  def post_comment_params
    params.require(:post_comment).permit(:comment)
  end


#ここまで手動で追記(4章)===========================================


end
