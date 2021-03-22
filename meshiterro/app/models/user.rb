class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  #ここから手動で追記(3章)====================================
  has_many :post_images, dependent: :destroy
  #ここから手動で追記(4章)====================================
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy

  #ここまで手動で追記=========================================

end
