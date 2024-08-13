class Vehicule < ApplicationRecord
  belongs_to :user

  has_many :bookings, dependent: :destroy

  validates :address, presence: true
  validates :category, presence: true
  validates :brand, presence: true
  validates :model, presence: true
  validates :energy, presence: true
  validates :capacity, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..40 }
  validates :color, presence: true, format: { with: /\A[a-zA-Z\s]+\z/, message: "only allows letters and whitespace" }
  validates :year, presence: true, numericality: { only_integer: true }, inclusion: { in: 1900..Date.today.year }
  validates :license_plate, presence: true, format: { with: /\A[A-Z]{2}-[0-9]{3}-[A-Z]{2}\z/, message: "only allows the format XX-000-XX" }
  validates :price_per_h, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..1000 }
  validates :price_per_d, presence: true, numericality: { only_integer: true }, inclusion: { in: 1..10000 }
  validates :description, presence: true, length: { minimum: 50, maximum: 600 }
end
