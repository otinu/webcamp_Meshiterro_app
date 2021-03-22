class Favorite < ApplicationRecord

#ここから手動で追記(4章)=========================
  belongs_to :user
  belongs_to :post_image
  #ここまで手動で追記(4章)=========================
end
