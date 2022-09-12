class ParkingFee < ActiveHash::Base
  self.data = [
    { id: 1,   name: '---' },
    { id: 2,   name: '有料（通年）' },
    { id: 3,   name: '有料（一部時期）' },
    { id: 4,   name: '無料' }
  ]

  include ActiveHash::Associations
  has_many :posts
end