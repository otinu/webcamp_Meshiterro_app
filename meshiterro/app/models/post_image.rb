class PostImage < ApplicationRecord

  #ここから手動で追記(3章)===============================
  belongs_to :user
  attachment :image
  #ここまで手動で追記(3章)===============================
end
