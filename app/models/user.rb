class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :user_name, presence: true

  # アソシエーション
  has_many :posts,    dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :likes,    dependent: :destroy

  # 既にいいねしているか判定するメソッドを定義
  # def already_liked?(post)
  #   self.likes.exists?(post_id: post.id)
  # end

  def liked_by?(post_id)
    likes.where(post_id: post_id).exists?
  end
end