class Post < ApplicationRecord

  # **バリデーション
  validates :title,               presence: true, length: { maximum: 40 }
  validates :shooting_month_id,   presence: true
  validates :shooting_week,       presence: true
  validates :impression_point,    presence: true
  validates :parking_presence_id
  validates :parking_fee_id 
  validates :nearest_station
  validates :walking_time_id
  validates :shooting_location,   presence: true
  validates :other_information
  validates :image,               presence: true

  # ** ジャンルの選択が「---」の時は保存できないようにする
  validates :shooting_month_id,   numericality: { other_than: 1, message: "can't be blank" }
  validates :shooting_week,       numericality: { other_than: 1, message: "can't be blank" }

  # ** アソシエーション
  # ** ↓userテーブルとのアソシエーションを組まないと、どのユーザーが出品するのかが判らないため、出品データを保存できない。
  belongs_to       :user
  has_many         :comments
  has_one_attached :image

  # ActiveHash
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :shooting_month
  belongs_to :shooting_week
  belongs_to :parking_presence
  belongs_to :parking_fee
  belongs_to :walking_time
end
