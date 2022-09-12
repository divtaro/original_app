class ShootingWeek < ActiveHash::Base
  self.data = [
    { id: 1,   name: '---' },
    { id: 2,   name: '上旬' },
    { id: 3,   name: '中旬' },
    { id: 4,   name: '下旬' }
  ]

  include ActiveHash::Associations
  has_many :posts
end