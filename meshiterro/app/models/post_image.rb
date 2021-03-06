class PostImage < ApplicationRecord

  #ここから手動で追記(3章)===============================
  belongs_to :user
  attachment :image
  has_many :post_comments, dependent: :destroy
  #ここから手動で追記(4章)===============================
  has_many :favorites, dependent: :destroy
  #ここから手動で追記(6章)===============================
  validates :shop_name, presence: true
  validates :image, presence: true
  #ここから手動で追記(4章)===============================
  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end
  #ここまで手動で追記===============================
end
