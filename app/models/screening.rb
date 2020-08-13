class Screening < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy
  has_many :reviews
  has_many :favorites
  validates :location, presence: true
  validates :film, presence: true
  validates :number_of_guests, presence: true
  validates :price, presence: true
  validates :description, presence: true
  validates :datetime, presence: true

  scope :in, ->(query) { where('location ILIKE ?', query) }
  scope :day, ->(start_date) { where('DATE(datetime) = ?', start_date )}
  scope :min_capacity, ->(guest_quantity = 100) { where('number_of_guests >= ?', guest_quantity) }
end
