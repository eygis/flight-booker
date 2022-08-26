class Booking < ApplicationRecord
  belongs_to :flight
  has_many :passengers, dependent: :delete_all

  accepts_nested_attributes_for :passengers

  validates :flight_id, presence: true
end
