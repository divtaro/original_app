class ParkingPresence < ActiveHash::Base
  self.data = [
    { id: 1,   name: '---' },
    { id: 2,   name: 'ăă' },
    { id: 3,   name: 'ăȘă' },
  ]

  include ActiveHash::Associations
  has_many :posts
end