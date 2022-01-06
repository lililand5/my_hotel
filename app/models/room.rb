class Room < ApplicationRecord


  has_many_attached :images
  
  belongs_to :hotel

  validates :room_type, presence: true
  validates :link_img, presence: true
  validates :price_per_night, presence: true
  validates :bed_type, presence: true
  validates :number_of_people, presence: true
  validates :booking_type, presence: true
end
