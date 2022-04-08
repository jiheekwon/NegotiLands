class Platform < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: 'Decentraland' },
    { id: 3, name: 'The Sandbox' },
    { id: 4, name: 'Cryptovoxels' },
    { id: 5, name: 'Somnium Space' }
  ]

  include ActiveHash::Associations
  has_many :lands
  
end