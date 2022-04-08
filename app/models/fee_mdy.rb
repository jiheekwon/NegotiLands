class FeeMdy < ActiveHash::Base
  self.data = [
    { id: 1, name: 'month' },
    { id: 2, name: 'day' },
    { id: 3, name: 'year' }
  ]

  include ActiveHash::Associations
  has_many :lands
  
end