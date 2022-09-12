class WalkingTime < ActiveHash::Base
  self.data = [
    { id: 1,   name: '---' },
    { id: 2,   name: '5分以内' },
    { id: 3,   name: '5分〜15分未満' },
    { id: 4,   name: '15分〜30分未満' },
    { id: 5,   name: '30分〜1時間未満' },
    { id: 6,   name: '1時間以上' }
  ]

  include ActiveHash::Associations
  has_many :posts
end