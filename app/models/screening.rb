class Screening < ApplicationRecord
  belongs_to :user
  has_many :bookings
  has_many :reviews
  has_many :favorites
  validates :location, presence: true
  validates :film, presence: true
  validates :number_of_guests, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :datetime, presence: true
end
