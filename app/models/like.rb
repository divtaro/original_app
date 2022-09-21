class Like < ApplicationRecord
  # **バリデーション
  validates :user_id, presence: true
  validates :post_id, presence: true

  # validates_uniqueness_of :post_id, scope: :user_id

  # def already_liked?(post)
  #   self.likes.exists?(post_id: post.id)
  # end

  # **アソシエーション
  belongs_to :user
  belongs_to :post
end