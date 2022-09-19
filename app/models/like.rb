class Like < ApplicationRecord
  # **バリデーション
  validates :user_id, presence: true
  validates :post_id, presence: true

  # **アソシエーション
  belongs_to :user
  belongs_to :post
end