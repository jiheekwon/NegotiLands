class FeeMdy < ActiveHash::Base
  self.data = [
    { id: 1, name: 'month(s)' },
    { id: 2, name: 'day(s)' },
    { id: 3, name: 'year(s)' }
  ]

  include ActiveHash::Associations
  has_many :lands
  
end