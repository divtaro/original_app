class Post < ApplicationRecord
  # 撮影地の登録時に、geocoderが緯度、経度を自動で登録する設定
  geocoded_by :shooting_location
  after_validation :geocode, if: :shooting_location_changed?
  
  # def liked_by?(user)
  #   likes.where(user_id: user.id).exists?
  # end

  def liked_by?(current_user)
    likes.where(user_id: user.id).exists?
  end
  

  # **バリデーション
  validates :title,               presence: true, length: { maximum: 40 }
  validates :shooting_month_id,   presence: true
  validates :shooting_week,       presence: true
  validates :impression_point,    presence: true
  # validates :parking_presence_id, presence: true
  # validates :parking_fee_id,      presence: true 
  # validates :nearest_station,     presence: true
  # validates :walking_time_id,     presence: true
  validates :shooting_location,   presence: true
  # validates :other_information
  validates :image,               presence: true

  # ** ジャンルの選択が「---」の時は保存できないようにする
  validates :shooting_month_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :shooting_week_id,    numericality: { other_than: 1, message: "can't be blank" }
  # validates :parking_presence_id, numericality: { other_than: 1, message: "can't be blank" }
  # validates :parking_fee_id,      numericality: { other_than: 1, message: "can't be blank" }
  # validates :walking_time_id,     numericality: { other_than: 1, message: "can't be blank" }

  # ** テーブル間のアソシエーション
  belongs_to       :user
  has_many         :comments
  has_many         :likes, dependent: :destroy
  has_one_attached :image

  # ActiveHashとのアソシエーション
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shooting_month
  belongs_to :shooting_week
  belongs_to :parking_presence
  belongs_to :parking_fee
  belongs_to :walking_time
end
