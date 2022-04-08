class Land < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :platform
  belongs_to :fee_mdy
  belongs_to :term_mdy

  validates :platform_id, presence: true, numericality: { other_than: 1 } 
  validates :location_x, presence: true
  validates :location_y, presence: true
  validates :fee_num, presence: true
  validates :fee_mdy_id, presence: true
  validates :term_num, presence: true
  validates :term_mdy_id, presence: true

  belongs_to :user

  has_one_attached :image
end
